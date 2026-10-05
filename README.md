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


## Animus

Aplicativo para Apple Silicon com macOS 14 ou superior. O código permanece em
repositório privado; este tap distribui apenas o aplicativo compilado, assinado,
e seu checksum. Não precisa de autenticação no GitHub para instalar:

```sh
brew tap andersonflima/tap
brew install --cask andersonflima/tap/animus
open -a Animus
```

Os ZIPs do Animus e o arquivo `SHA256SUMS` estão nas
[releases deste tap](https://github.com/andersonflima/homebrew-tap/releases).
Cada release informa se o pacote é notarizado. Caso uma versão não notarizada
seja bloqueada, autorize a abertura em Ajustes do Sistema > Privacidade e
Segurança após conferir a origem do download.

Na primeira execução, configure sua conta e autorize os acessos necessários
no painel de permissões do Animus. O pacote não inclui dados de usuário ou vault.
