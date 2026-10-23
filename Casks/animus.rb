cask "animus" do
  version "0.1.117"
  sha256 "b19bcf8bff1ee99c218f66db568f64a16e5b1828fefb7b54e45c7f25219e0215"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
