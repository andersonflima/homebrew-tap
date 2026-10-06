cask "animus" do
  version "0.1.9"
  sha256 "de2799d014ea81ade8ef5739692b3b0c06e4c96a09c35dfdf6a959a2adfd35f7"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
