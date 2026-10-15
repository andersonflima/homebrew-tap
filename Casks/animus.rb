cask "animus" do
  version "0.1.93"
  sha256 "0b3fd2376ae910d5a2474223769cc531f137ce2a0571ba756b56e636dbbbe076"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
