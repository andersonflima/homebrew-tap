cask "animus" do
  version "0.1.20"
  sha256 "2c1049f2dac2e9cb8a03b6f41f6822fff4e6b935498337d1daadcb4143c552e7"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
