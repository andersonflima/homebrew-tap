cask "animus" do
  version "0.1.38"
  sha256 "214a42759ddb1fd7f0ccb36766ddbf3775373a9c0363d953bf5d3d710ffa341e"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
