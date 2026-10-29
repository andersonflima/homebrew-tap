class CrowSkills < Formula
  desc "Skills de agente versionadas, com instalador protegido para varios agentes"
  homepage "https://github.com/andersonflima/homebrew-tap"
  # TARBALL DE RELEASE, NAO `using: :git` (mesmo motivo do uniflow): o codigo vive num
  # repositorio PRIVADO e o sandbox do Homebrew nao autentica git. O brew baixa este
  # tarball com curl, sem credencial, e confere o sha256. Gerado por `npm pack` do repo
  # de codigo (mesmo conteudo do pacote npm restrito).
  url "https://github.com/andersonflima/homebrew-tap/releases/download/crow-skills-0.12.2/crow-skills-0.12.2.tar.gz"
  sha256 "2dafc08221186c78428bc65428a99615d2895a7227472a9a042b7339746b8257"
  version "0.12.2"

  depends_on "node"
  depends_on "python@3.13"

  def install
    libexec.install Dir["*"]
    (bin/"crow-skills").write <<~SH
      #!/bin/sh
      export CROW_SKILLS_PYTHON="${CROW_SKILLS_PYTHON:-#{Formula["python@3.13"].opt_bin}/python3.13}"
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/bin/npm-crow-skills.cjs" "$@"
    SH
    chmod 0755, bin/"crow-skills"
  end

  test do
    assert_match "crow-skills", shell_output("#{bin}/crow-skills --help")
  end
end
