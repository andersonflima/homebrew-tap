cask "animus" do
  version "0.1.66"
  sha256 "681d606763c4429d186ab7b9c0bab2d1f9a1606bf8dc3e28098cde5f7c5ec399"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
