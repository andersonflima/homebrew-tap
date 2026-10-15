cask "animus" do
  version "0.1.91"
  sha256 "410f70ab85a65118a497f2eabafdf9af1f71d24809c682a5c1f3938c92a936cf"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
