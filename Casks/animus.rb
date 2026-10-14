cask "animus" do
  version "0.1.82"
  sha256 "361e7f90a81e936bc8dcfb00c8f804fb7ed894261b6bca0636013c956699dd87"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
