cask "animus" do
  version "0.1.75"
  sha256 "93d2a9fe8425580787c837b169e1bc6e41fbc4a9e4ce63652e0ff90d407e6ae1"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
