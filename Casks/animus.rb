cask "animus" do
  version "0.1.78"
  sha256 "d67f293042b7295902b56f334262987f6a9ac3c84d9b8bf5f9f9fbbe849913b1"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
