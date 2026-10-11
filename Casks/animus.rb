cask "animus" do
  version "0.1.41"
  sha256 "a5b9b37d660dddc8cce293b358931f1de95b6504c449595f1d213ef75925e327"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
