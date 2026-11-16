# homebrew-tap

Tap público. Distribui o **Crow Cockpit** (aplicativo para Apple Silicon, assinado e notarizado).
O código vive em repositório próprio e privado; aqui ficam apenas o cask e os DMGs como assets de release.
O cockpit só abre em dispositivos autorizados pelo dono (token assinado), então o download público não dá acesso.

```sh
brew tap andersonflima/tap
brew install --cask andersonflima/tap/crow-cockpit
```

O `crow-skills` é distribuído pelo npm (`@andespindola/crow-skills`); o `uniflow` foi aposentado.


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

## crow-skills

Skills de agente versionadas, com instalador para vários agentes (Codex, Claude, Gemini…).
O código vive em repositório privado e o pacote npm é restrito; aqui vai o tarball de release
(sem credencial, verificado por sha256), então funciona em máquina sem token do npm:

```sh
brew tap andersonflima/tap
brew install crow-skills
crow-skills --version
crow-skills list
```
