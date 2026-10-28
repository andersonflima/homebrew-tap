# Generated from crow-term packaging/homebrew by scripts/update_tap.py; do not edit by hand.
cask "crow-term" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0-alpha.2"
  sha256 arm:   "6b405bcff0fee3bc98247d55712546ebce7c9461895016627350405ae28d4d1f",
         intel: "573b319d9da149b856f3c4fbdc7ba30a5d5eb609005adeb654edfa19f913bf69"

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
