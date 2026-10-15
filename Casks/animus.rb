cask "animus" do
  version "0.1.89"
  sha256 "f6d0ad56c8e0d9bd62a07863c9ada2c2ed3d5f84a7e8103e5082660175b68a51"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
