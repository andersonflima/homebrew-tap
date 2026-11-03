cask "animus" do
  version "0.1.123"
  sha256 "76f273ef31940a410e354b5c45828b07f1ebdf2f7bd9fa66d093caa47e991f17"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
