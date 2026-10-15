cask "animus" do
  version "0.1.94"
  sha256 "8dadb1579c12baf26d6c8a7d965a9eff4a86239501f226309ea3117e1b57bca8"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
