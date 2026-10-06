cask "animus" do
  version "0.1.8"
  sha256 "005f2357c1ebf9369d4675a1686929cc68f140cd6f05f112e675f7185ed8ee7a"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
