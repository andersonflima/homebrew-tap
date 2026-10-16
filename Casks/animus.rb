cask "animus" do
  version "0.1.95"
  sha256 "8ecdc71640b8899791b52dbaea815ac53fec99aad8e95a3769573c9097761127"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
