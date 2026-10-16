cask "animus" do
  version "0.1.98"
  sha256 "cc7c999bf3c4415c47afb5f3a7372be54a38a2a1d028c747168c8396f19fcb18"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
