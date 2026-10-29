# Generated from crow-term packaging/homebrew by scripts/update_tap.py; do not edit by hand.
cask "crow-term" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0-alpha.3"
  sha256 arm:   "9035173bcbc1dcef5864aaf60cc68985677a62b729d4178abb3a5cfd9b4a5949",
         intel: "276bf221fad06873bb8c0a4063b1104508186a6a70573b12d5d301f21dc4227c"

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
end
