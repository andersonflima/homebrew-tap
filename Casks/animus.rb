cask "animus" do
  version "0.1.16"
  sha256 "d3a8c4cbb024bc46d5929df8e14e3b56fdc44a0aafdafc29a8ed31ab85847d2d"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
