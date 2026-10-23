cask "animus" do
  version "0.1.119"
  sha256 "524f05678619c1952409c63835e6f4ba80daa6e62d29df103dbfb70d1344a4bb"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
