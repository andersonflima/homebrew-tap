cask "animus" do
  version "0.1.28"
  sha256 "e834da3a03a3a032a35dcef94bfacefe2c4c7c5010beefbfada4ea9d204ea7f6"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
