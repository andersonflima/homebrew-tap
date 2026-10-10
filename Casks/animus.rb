cask "animus" do
  version "0.1.34"
  sha256 "8cf8f1bfbd77918e976c63080d027ed3bb952a2435728a561f475d59cac57f2d"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
