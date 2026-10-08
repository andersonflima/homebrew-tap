cask "animus" do
  version "0.1.18"
  sha256 "906152dcaa16026935b8a12310d4a32d2bdaab2264573606ce2f68593fde2270"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
