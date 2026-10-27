class CrowSkills < Formula
  desc "Skills de agente versionadas, com instalador protegido para varios agentes"
  homepage "https://github.com/andersonflima/homebrew-tap"
  # TARBALL DE RELEASE, NAO `using: :git` (mesmo motivo do uniflow): o codigo vive num
  # repositorio PRIVADO e o sandbox do Homebrew nao autentica git. O brew baixa este
  # tarball com curl, sem credencial, e confere o sha256. Gerado por `npm pack` do repo
  # de codigo (mesmo conteudo do pacote npm restrito).
  url "https://github.com/andersonflima/homebrew-tap/releases/download/crow-skills-0.6.1/crow-skills-0.6.1.tar.gz"
  sha256 "74b642a194b4cc7ec530e0fed49ab1da8b97c48c455108090c5f0766508edb07"
  version "0.6.1"

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
