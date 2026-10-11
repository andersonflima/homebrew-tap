cask "animus" do
  version "0.1.39"
  sha256 "5c9ab0d4682e8661b0ae2cb72ee18c3565c9a5e09374a97e9bf44b4cdc66a29e"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
