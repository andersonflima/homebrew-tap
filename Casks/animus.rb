cask "animus" do
  version "0.1.7"
  sha256 "833306f34c32e0fff52a6c5d05e075b3e012a221e41eccb3612bb3997fb87759"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
