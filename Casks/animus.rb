cask "animus" do
  version "0.1.22"
  sha256 "349a12a8c6e8d7b5cc9b6747db24d5731b19b470bc9515c3bed91fed5654523d"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
