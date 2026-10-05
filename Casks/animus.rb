cask "animus" do
  version "0.1.3"
  sha256 "f0ebfe418751b6e3c78849c3aa55d21dd69c0f009863be74ce7d03cdeba66148"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
