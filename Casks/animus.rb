cask "animus" do
  version "0.1.24"
  sha256 "35060591a0dea0a165e4380840c8f10ab64b6ff86dbccb64305922dc1a52aa7f"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
