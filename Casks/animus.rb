cask "animus" do
  version "0.1.52"
  sha256 "90274261ee5b512889639d705f072d5cc93cec262b694e46df9cf89db7ba3ee2"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
