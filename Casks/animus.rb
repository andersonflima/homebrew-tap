cask "animus" do
  version "0.1.29"
  sha256 "aa341f1416ec2c992ac3248701383d111c899013b6bada6afeeadcc726efe42b"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
