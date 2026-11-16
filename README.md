# homebrew-tap

Tap público. Distribui o **Crow Cockpit** (aplicativo para Apple Silicon, assinado e notarizado).
O código vive em repositório próprio e privado; aqui ficam apenas o cask e os DMGs como assets de release.
O cockpit só abre em dispositivos autorizados pelo dono (token assinado), então o download público não dá acesso.

```sh
brew tap andersonflima/tap
brew install --cask andersonflima/tap/crow-cockpit
```

O `crow-skills` é distribuído pelo npm (`@andespindola/crow-skills`); o `uniflow` foi aposentado.
