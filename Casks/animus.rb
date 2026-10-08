cask "animus" do
  version "0.1.17"
  sha256 "91a1352641819d2c4e0fafb18cf94e3b0e07fe375abbfcba8b0c1c4fe87af9e0"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
