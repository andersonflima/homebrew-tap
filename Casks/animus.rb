cask "animus" do
  version "0.1.2"
  sha256 "f213eb7ce13a5be8f94cb1064508476a0925f71955d971a6ec8d563b935c31fa"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
