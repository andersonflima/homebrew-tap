cask "animus" do
  version "0.1.110"
  sha256 "aac5ab8d8d5175083592ccd068294f2525c013aaca1f2b46f5e521ca5a3eae15"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
