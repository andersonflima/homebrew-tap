cask "animus" do
  version "0.1.14"
  sha256 "dfa7e1f5f53835a76cbea9d2c3ad24342279a2b4cd454b20daf332521b617cf9"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
