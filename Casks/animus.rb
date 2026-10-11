cask "animus" do
  version "0.1.42"
  sha256 "0f7300205fd0fa1db10a573313ca4e0743b6afb31034c38dda37f12a88194c9a"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
