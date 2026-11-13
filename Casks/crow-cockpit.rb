cask "crow-cockpit" do
  version "0.2.2"
  sha256 "6c5cd79d9212b099f0f7fd336ccb2fdd4e4f9c219ca9cb96f2ef920fbb633497"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/crow-cockpit-#{version}/Crow-Cockpit-#{version}-arm64.dmg"
  name "Crow Cockpit"
  desc "Desktop cockpit for the crow multi-agent setup — live roster, chat, resources"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Crow Cockpit.app"

  # Auto-update over Homebrew: install (if absent) + always (re)load a per-user
  # LaunchAgent that refreshes the tap and runs `brew upgrade --cask crow-cockpit`.
  postflight do
    require "fileutils"
    home   = Dir.home
    label  = "com.andersonflima.crow-cockpit.autoupdate"
    bin    = "#{home}/.local/bin/crow-cockpit-autoupdate"
    plist  = "#{home}/Library/LaunchAgents/#{label}.plist"
    logdir = "#{home}/.local/state/crow-cockpit/autoupdate"

    FileUtils.mkdir_p([File.dirname(bin), File.dirname(plist), logdir])
    File.write(bin, <<~'SH')
      #!/bin/sh
      export PATH="/opt/homebrew/bin:/usr/bin:/bin:/usr/local/bin:$HOME/.npm-global/bin"
      LOG="$HOME/.local/state/crow-cockpit/autoupdate/scheduler.log"
      mkdir -p "$(dirname "$LOG")"
      {
        echo "=== $(date '+%Y-%m-%d %H:%M:%S') crow-cockpit autoupdate ==="
        TAP="$(brew --repository)/Library/Taps/andersonflima/homebrew-tap"
        [ -d "$TAP" ] && git -C "$TAP" pull --ff-only 2>&1 | sed 's/^/tap: /'
        if brew outdated --cask crow-cockpit >/dev/null 2>&1; then
          brew upgrade --cask crow-cockpit 2>&1 | sed 's/^/upgrade: /' || echo "upgrade: failed"
        else
          echo "upgrade: already latest"
        fi
        echo "done $(date '+%H:%M:%S')"
      } >> "$LOG" 2>&1
    SH
    FileUtils.chmod(0755, bin)

    unless File.exist?(plist)
      File.write(plist, <<~PL)
        <?xml version="1.0" encoding="UTF-8"?>
        <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        <plist version="1.0">
        <dict>
          <key>Label</key><string>#{label}</string>
          <key>ProgramArguments</key><array><string>#{bin}</string></array>
          <key>EnvironmentVariables</key><dict>
            <key>HOME</key><string>#{home}</string>
            <key>PATH</key><string>/opt/homebrew/bin:/usr/bin:/bin:/usr/local/bin:#{home}/.npm-global/bin</string>
          </dict>
          <key>RunAtLoad</key><true/>
          <key>LowPriorityIO</key><true/>
          <key>Nice</key><integer>10</integer>
          <key>ProcessType</key><string>Background</string>
          <key>StartCalendarInterval</key><dict><key>Hour</key><integer>11</integer><key>Minute</key><integer>7</integer></dict>
          <key>StandardOutPath</key><string>#{logdir}/scheduler.log</string>
          <key>StandardErrorPath</key><string>#{logdir}/scheduler.log</string>
        </dict>
        </plist>
      PL
    end
    # Idempotent (re)load so it survives upgrades (plist kept, agent unloaded).
    system_command "/bin/launchctl", args: ["bootout", "gui/#{Process.uid}/#{label}"], must_succeed: false, print_stderr: false
    system_command "/bin/launchctl", args: ["bootstrap", "gui/#{Process.uid}", plist], must_succeed: false, print_stderr: false
  end

  # Unload the agent on uninstall (no sudo). Files are trashed by `--zap`.
  uninstall launchctl: "com.andersonflima.crow-cockpit.autoupdate"

  zap trash: [
    "~/Library/LaunchAgents/com.andersonflima.crow-cockpit.autoupdate.plist",
    "~/.local/bin/crow-cockpit-autoupdate",
    "~/.local/state/crow-cockpit",
    "~/Library/Application Support/dev.crow.cockpit",
    "~/Library/Caches/dev.crow.cockpit",
  ]
end
