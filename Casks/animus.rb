cask "animus" do
  version "0.1.107"
  sha256 "ff325470468aea98d5febeeb76f85b62cdbd61bce00da3595a0a6684dbe0a857"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
