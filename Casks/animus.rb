cask "animus" do
  version "0.1.1"
  sha256 "48a430548bc463e3f21e0339550db5715196c543da2692c00249a709a828aee6"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Animus.app"
end
