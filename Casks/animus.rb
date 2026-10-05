cask "animus" do
  version "0.1.0"
  sha256 "7b315103093ca791f19e31bdcbf33c5271a97a68cb168f76e9ede8c7405ea29d"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Animus.app"

  caveats <<~EOS
    Esta versão é assinada com Developer ID, mas ainda não é notarizada.
    Se o macOS bloquear a abertura, autorize o Animus em Ajustes do Sistema >
    Privacidade e Segurança após conferir a origem do download.
  EOS
end
