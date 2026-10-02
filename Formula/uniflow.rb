class Uniflow < Formula
  desc "CLI manager with separate planning and execution providers"
  homepage "https://github.com/andersonflima/uniflow"
  # TARBALL DE RELEASE, NAO `using: :git`, e este tap e PUBLICO de proposito.
  #
  # O codigo do uniflow vive num repositorio PRIVADO, e o sandbox do Homebrew 7
  # nega exatamente o que a autenticacao do git precisa —
  # `(deny file-read* (subpath ".../Library/Keychains"))` mata o helper
  # osxkeychain e o ssh-agent cai junto. Resultado medido: `git clone` dentro do
  # sandbox morre com `uncaught signal BUS` em SSH E em HTTPS. Nao ha env para
  # desligar esse sandbox (HOMEBREW_NO_SANDBOX nao surte efeito).
  #
  # A saida e nao usar git na instalacao: o brew baixa este tarball com curl, sem
  # credencial nenhuma, e verifica pelo sha256. O repositorio de codigo segue
  # privado (historico, issues, testes, bench); publico e apenas o que o usuario
  # instalado ja teria no disco de qualquer forma.
  url "https://github.com/andersonflima/homebrew-tap/releases/download/uniflow-0.62.0/uniflow-0.62.0.tar.gz"
  sha256 "8694ead34a4766f335ead2c6f5c36b1d4dd5f4b2c7b728fceb3aa047542cbbbf"
  version "0.62.0"

  depends_on "node"

  def install
    libexec.install "package.json", "README.md", "src", "vendor", "skills"
    (bin/"uniflow").write <<~SH
      #!/bin/sh
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/src/cli.mjs" "$@"
    SH
    chmod 0755, bin/"uniflow"
  end

  test do
    assert_match "uniflow", shell_output("#{bin}/uniflow --version")
  end
end
