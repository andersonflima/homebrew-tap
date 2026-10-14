cask "animus" do
  version "0.1.73"
  sha256 "125962482eac5b1d12d81188f81e673fc8350c362a73033fd303dbe247a0caaa"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
