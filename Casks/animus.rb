cask "animus" do
  version "0.1.99"
  sha256 "7e0b8781c65420774fe06f2b3fea590739a75554c9da9dbe8bcae4c655ab7eba"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
