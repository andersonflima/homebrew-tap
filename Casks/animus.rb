cask "animus" do
  version "0.1.49"
  sha256 "df9da1744802407ee367741d9238d5d1097df6dc4a04c3305a4e49c42cf5868b"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
