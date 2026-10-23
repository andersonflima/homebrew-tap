cask "animus" do
  version "0.1.118"
  sha256 "315a2106ecaea655d6aa4f0b013470a28337cda6e1d514fa1edd50c63b98b8b9"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
