cask "animus" do
  version "0.1.61"
  sha256 "0936b0ede296774c1a8a3bcc5ee370cf6771ba0b207af2ed5ec9799f5e77c908"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
