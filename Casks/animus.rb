cask "animus" do
  version "0.1.70"
  sha256 "4302736370e48f20e4ee12dc47f0742f104d95c4b919096421c8dd58eb7d72ce"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
