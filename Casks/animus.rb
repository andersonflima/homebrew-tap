cask "animus" do
  version "0.1.27"
  sha256 "a7f7c0e0b05b7812344b7f52459d0aadfc9a4eeccb06bb3e111a63e8edc18833"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/animus-#{version}/Animus-#{version}-arm64.zip"
  name "Animus"
  desc "Assistente de voz e gestos"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Animus.app"
end
