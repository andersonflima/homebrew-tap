cask "animus" do
  version "0.1.65"
  sha256 "5be6a3dce09d6effff3c40743ab9de47d3bc90adbd94971a4796132e24837d47"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
