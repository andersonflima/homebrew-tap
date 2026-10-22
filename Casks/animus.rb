cask "animus" do
  version "0.1.111"
  sha256 "ddfdcb518402193b2414e5426909d53c3718b69a3753f6021860c57447b2a321"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
