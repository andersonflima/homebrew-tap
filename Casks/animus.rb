cask "animus" do
  version "0.1.106"
  sha256 "3a10acbd8d9caca5ba148136e0daef9181c2fdbb37f4131427d254025ab16e41"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
