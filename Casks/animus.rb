cask "animus" do
  version "0.1.33"
  sha256 "1a5b3b91aa34bd49b5142a3e972a99e1f41bce35cc54f698a55d6b13ff606a48"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
