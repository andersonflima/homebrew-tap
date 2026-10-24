cask "animus" do
  version "0.1.121"
  sha256 "1db8a4ccf2abb27ea361d9b3e7f81abb44dedb5067c89d8a41f88e3f877b43ae"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
