cask "animus" do
  version "0.1.109"
  sha256 "f9f982081ba01c250233aa10ba0cb2da6c06fb1957a7ae34f117350d0bf743e1"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
