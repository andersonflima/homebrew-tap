cask "animus" do
  version "0.1.86"
  sha256 "4c16f3d872c5680de60798352ac475ddc73394e09e40f4de6660da7608bf9722"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
