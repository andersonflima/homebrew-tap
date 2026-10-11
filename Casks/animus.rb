cask "animus" do
  version "0.1.62"
  sha256 "d9fa9d11d95631e7cb4765588db96192acb1f02968733f6a86c62c538bc1f72e"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
