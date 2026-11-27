cask "crow-cockpit" do
  version "0.2.162"
  sha256 "5a0355e0945a5b024c41b7571887df081a5ce31aa3a57d2646847b3264fb4bca"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/crow-cockpit-#{version}/Crow-Cockpit-#{version}-arm64.dmg"
  name "Crow Cockpit"
  desc "Desktop cockpit for the crow multi-agent setup — live roster, chat, resources"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on macos: :big_sur
  depends_on arch: :arm64
  depends_on formula: "node"
  depends_on formula: "python@3.15"

  app "Crow Cockpit.app"

  # The app installs and refreshes the auto-update LaunchAgent itself, at
  # startup. Homebrew deprecated `postflight` (arbitrary Ruby) in favour of a
  # sandboxed declarative DSL that cannot write a helper script and a plist
  # under $HOME, and owning it in the app also covers a non-brew install.
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
