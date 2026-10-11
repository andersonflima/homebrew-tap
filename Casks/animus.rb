cask "animus" do
  version "0.1.56"
  sha256 "3e9a4c294056eb3f792165e5e9e5d4439a48085fa0c1610d0047dce9e4798768"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
