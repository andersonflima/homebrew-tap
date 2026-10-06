cask "animus" do
  version "0.1.4"
  sha256 "ab0839ff666f76a5f0f164cd5bcea4915ac52bf7298af0bc745a0227589883cb"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
