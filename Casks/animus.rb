cask "animus" do
  version "0.1.32"
  sha256 "603bbacef5558bff1fbd5954185836b3a5877ff35c1f0def391df6f30f77ec69"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
