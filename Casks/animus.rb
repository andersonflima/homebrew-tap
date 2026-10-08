cask "animus" do
  version "0.1.21"
  sha256 "07cbae50908305cbf32296ef57276cd316ed21501cea388aacd3cff3e5545dae"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
