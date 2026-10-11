cask "animus" do
  version "0.1.54"
  sha256 "ac7789b7fecd72442d89fa3ad81e0b90e0d87be14a813d8f285c44b0612093fb"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
