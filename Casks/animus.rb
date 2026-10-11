cask "animus" do
  version "0.1.50"
  sha256 "059b50fe87914ade664e94b1b4e89fe885f78fa903ab5efd549d73b6f55a591e"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
