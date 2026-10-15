cask "animus" do
  version "0.1.88"
  sha256 "a36a7fd6156e806bc93bef8ee9736231c332b4a96ee7bc88f39f424dc0f9ba51"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
