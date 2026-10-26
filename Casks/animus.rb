cask "animus" do
  version "0.1.122"
  sha256 "939f73edbd1b427849fb81afcd3b45e11863256b1b5b7ad5edf728c09d8827c5"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
