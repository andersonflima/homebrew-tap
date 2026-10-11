cask "animus" do
  version "0.1.55"
  sha256 "90b7044fdb83d3c8bd3a1008afe43ec0e4e5eb5d7ea05958bb7f9219ef47da2b"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
