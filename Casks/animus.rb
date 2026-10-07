cask "animus" do
  version "0.1.13"
  sha256 "29ba5d105fd434b45657220a8a827b1df88cada7a867cb2e7e65fd4cceac57b5"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
