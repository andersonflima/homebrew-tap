cask "animus" do
  version "0.1.102"
  sha256 "edf21a1917df1d6d619750baff241aa089e057e9db7ab98ae5bdad66193f5fff"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
