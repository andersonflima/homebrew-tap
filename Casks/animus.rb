cask "animus" do
  version "0.1.101"
  sha256 "a1e5ce484b27bc63a7a76bdaebf35151b7d54882d995007005c017cf4b82ba61"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
