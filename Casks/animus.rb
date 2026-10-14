cask "animus" do
  version "0.1.85"
  sha256 "1ea3d63e576c889ee2bb4ddc6b3e645a10ad12b588610f66f44bb94c66ebc899"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
