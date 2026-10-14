cask "animus" do
  version "0.1.83"
  sha256 "40305d87b1125ac6e919c973c34bba5c58624f6a135d67214d0e8541a9dec2c3"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
