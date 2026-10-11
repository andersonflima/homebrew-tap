cask "animus" do
  version "0.1.63"
  sha256 "7e7e65b063506fe6c4ef769d6c8f49f21cce028f2f09e9c65f677b5b9d84b675"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
