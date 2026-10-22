cask "animus" do
  version "0.1.112"
  sha256 "88f856a6205e09f49f68fb07acb9f29fa026bd1d0fa1aa57a8971a9aa53cc075"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
