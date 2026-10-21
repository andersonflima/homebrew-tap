cask "animus" do
  version "0.1.105"
  sha256 "022fb3f82f85815853b3b99029102a160dc31e9ad14af7f16d824bf9956ea93d"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
