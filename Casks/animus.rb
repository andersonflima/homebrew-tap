cask "animus" do
  version "0.1.58"
  sha256 "31a438159c5c403e03729d5eb01065757f07ceb43adfc94bb85f527cb91ca955"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
