cask "animus" do
  version "0.1.35"
  sha256 "66ae7ce8583ba848fb14dce20212e465c6ef12a231ebe7aaa429618fe2d4541a"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
