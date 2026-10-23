cask "animus" do
  version "0.1.114"
  sha256 "3f1de511a5b8ac23c04fa8ec5d414512d582f4764e883eb6fc774337c9527cc8"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"

end
