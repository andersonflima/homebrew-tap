# Generated from crow-term packaging/homebrew by scripts/update_tap.py; do not edit by hand.
cask "crow-term" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0-alpha.2"
  sha256 arm:   "e614861fa00409be77a3a9e266557353a6390a579bc47479fc762792d9011ea2",
         intel: "49745dbb88c3a0e7565e331769c034afdc882303ed17686e388f2ab364392019"

  url "https://github.com/andersonflima/crow-term/releases/download/v#{version}/crow-term-#{version}-macos-#{arch}.app.zip"
  name "Crow Term"
  desc "Native terminal with persistent sessions, built in Rust"
  homepage "https://github.com/andersonflima/crow-term"

  depends_on :macos

  app "Crow Term.app"
  binary "#{appdir}/Crow Term.app/Contents/MacOS/crow-term"

  zap trash: [
    "~/Library/Application Support/dev.crow.crow-term",
    "~/Library/Caches/dev.crow.crow-term",
  ]

  caveats <<~EOS
    This build of Crow Term is not notarized by Apple (it is only ad-hoc
    signed). If macOS refuses to open it, remove the download quarantine:
      xattr -dr com.apple.quarantine "#{appdir}/Crow Term.app"
  EOS
end
