cask "animus" do
  version "0.1.87"
  sha256 "bd68b82882233ed64d0febe3a5a6555f8ca7ef10ecfe11704a4e2d22afbf9e37"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
