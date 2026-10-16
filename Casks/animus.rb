cask "animus" do
  version "0.1.97"
  sha256 "8814c5e66f87ab55105bff4012e40d5c8228b67b525a11519aef24eb831b60f9"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
