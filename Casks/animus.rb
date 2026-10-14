cask "animus" do
  version "0.1.84"
  sha256 "5bbaa98a65b8e9291fefbf691ad2458eed7d6f9d82f770292921e4b0d7e38fc5"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
