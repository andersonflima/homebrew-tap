cask "animus" do
  version "0.1.120"
  sha256 "4f10c24f6ec4538fd237699b84435cdaa9177da04e09293e151af4a267ccf92a"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
