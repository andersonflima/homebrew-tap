cask "animus" do
  version "0.1.115"
  sha256 "328bd6e25eca4b1d95e38c26911c0b70823c054d31703f280c57efda783d709d"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
