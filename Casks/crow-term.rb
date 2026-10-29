# Generated from crow-term packaging/homebrew by scripts/update_tap.py; do not edit by hand.
cask "crow-term" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0-alpha.4"
  sha256 arm:   "719b63fc52e9c721137af76be4a47d490811bafa16922f7bc7448c43ae503f3b",
         intel: "69700f0a8196639351865f5cbc66ade887bd5c53a737097c3ef0ef8baa3b9154"

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
