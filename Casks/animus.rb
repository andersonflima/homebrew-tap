cask "animus" do
  version "0.1.72"
  sha256 "70bd920c3661e4dfe78c42d867a7ba31c94efa318c91a9fc7a9a1a16ac576c4f"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
