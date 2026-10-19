cask "animus" do
  version "0.1.100"
  sha256 "a5cb9805713d0ff7e27ef19a4c7b2ac06ba1956a244e0386d786458adb507405"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
