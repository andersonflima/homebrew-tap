cask "animus" do
  version "0.1.45"
  sha256 "fa61d0f19d81de9607f4e431d565f73933b125eae8c809f765da548fb0a73242"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
