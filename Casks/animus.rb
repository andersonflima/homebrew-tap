cask "animus" do
  version "0.1.25"
  sha256 "15dc54feae84f4ada5b9e2cb98533d5d2e222815ff316dbe852557d5c803416a"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
