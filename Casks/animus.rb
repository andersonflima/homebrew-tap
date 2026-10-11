cask "animus" do
  version "0.1.60"
  sha256 "5079dc834ef2489727d67a6e43d78852040ffac3b9e36901d6b2ac4a12ea410e"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
