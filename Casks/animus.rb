cask "animus" do
  version "0.1.23"
  sha256 "51460361f3acb5ae4daead313e4ec450d36ffad1771dea7d1ffee703c84aedd9"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
