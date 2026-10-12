cask "animus" do
  version "0.1.68"
  sha256 "32b7ab93d925e2544d91891e23f11fa886cf23d6ea6ed5ca8b58509a385446bb"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
