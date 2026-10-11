cask "animus" do
  version "0.1.51"
  sha256 "c6d88f53d7b2b3829c67fae08b3cbcca2bc496b372df787aeda3e25b26f8357d"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
