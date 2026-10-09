cask "animus" do
  version "0.1.26"
  sha256 "197c2fe8bdc7524b79a2d235ad390b7b3e5b54007b2827d17f70c746cc4dd85d"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
