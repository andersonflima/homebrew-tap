cask "animus" do
  version "0.1.37"
  sha256 "8b4e0640b2d96a622ebaea50109e7f4385a7bf10412e1ff977c6c5cf8f85975e"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
