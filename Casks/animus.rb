cask "animus" do
  version "0.1.19"
  sha256 "1a1ce6dbade7e867e80066ed68d0fdd46279722a0b94d8abbd35ab42320db809"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
