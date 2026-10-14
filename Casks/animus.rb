cask "animus" do
  version "0.1.76"
  sha256 "b1437ea7ce179255fd1ae6049ffee9576a4665785d002c2fdd540582c38e2cd4"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
