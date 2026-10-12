cask "animus" do
  version "0.1.69"
  sha256 "3477b2b72838a841c1d74d1a49a7a1314e78587fddb10ebba584a25b8befbbc1"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
