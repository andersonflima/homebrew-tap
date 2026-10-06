cask "animus" do
  version "0.1.6"
  sha256 "93f753bb2a808f90913d0c30a7fe1425868eea6638365cd83029d5a7dc83475f"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
