cask "animus" do
  version "0.1.74"
  sha256 "f99371af45c75ac3d3d2955e2c6bc8658c58caab9a9ef216c13e20c3e4d16d34"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
