cask "animus" do
  version "0.1.92"
  sha256 "83b4f29c6905a92aa5347799f646f47c8463217617bab70775d9114b164bbc0b"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
