# homebrew-tap

Tap público de formulas. O **código** de cada projeto vive no repositório próprio
(privado quando for o caso); aqui ficam apenas as formulas e os tarballs de
release como assets.

```sh
brew tap andersonflima/tap
brew install uniflow
```

## Por que o tarball, e não `using: :git`

O sandbox do Homebrew 7 nega leitura do keychain e derruba o ssh-agent, então um
`git clone` de repositório privado morre lá dentro com `uncaught signal BUS` —
em SSH e em HTTPS. Não existe env para desligar o sandbox. Baixando um tarball
com `curl` e verificando por `sha256`, a instalação não precisa de credencial
nenhuma e o repositório de código continua privado.
