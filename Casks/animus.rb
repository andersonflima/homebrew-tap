cask "animus" do
  version "0.1.81"
  sha256 "18f7f86845bd55cebe13ea1e14d766b5fc729d7afa23414d391fec911635879e"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
