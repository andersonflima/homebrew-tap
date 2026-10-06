cask "animus" do
  version "0.1.5"
  sha256 "c3436fefc19b2abec61fd3071bb7c0e42d6b40c995403ca783c02b3ef48668e1"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
