cask "animus" do
  version "0.1.11"
  sha256 "6ad853027a551b8b8832e32ecd3c1adfc82ba3e69b0385616678990500018dbc"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
