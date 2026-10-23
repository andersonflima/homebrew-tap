cask "animus" do
  version "0.1.116"
  sha256 "77fdd867007af95a8c115c452a259f555d54788c8dc3af0e2ceaf4c4a8edd0d3"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
