cask "animus" do
  version "0.1.113"
  sha256 "33ed02dcc9df1eb72ee96d3aea793e89277d4055f7b5fe070fa66232dfadb8ef"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
