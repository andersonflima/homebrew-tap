cask "animus" do
  version "0.1.59"
  sha256 "c7675677ce6c645f117387e7f35ac5f4066c72dee28f35a2f90a4aad45354a9b"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
