cask "animus" do
  version "0.1.44"
  sha256 "6b67d8f2fe46df415a69ba83eddc589fdfe5c994e01f56d7b9b4c4cbf0b85726"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
