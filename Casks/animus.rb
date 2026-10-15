cask "animus" do
  version "0.1.90"
  sha256 "6c700d0b7719163eeb7b1f8d670318bb269372a2efc74675e752862bb38da975"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
