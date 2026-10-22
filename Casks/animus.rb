cask "animus" do
  version "0.1.108"
  sha256 "53f6821041c1be6ece81ca1f2824d0dee545196b3d8745ab50473a44a27926c1"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
