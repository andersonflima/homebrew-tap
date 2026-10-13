cask "animus" do
  version "0.1.71"
  sha256 "765519094cbef3a910e3fec21cdf4bbe90287209a1ca4627c683e495ec297c95"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
