cask "crow-cockpit" do
  version "0.1.0"
  sha256 "685fa9b7f95c8cb5023409ae197641e3201ba6f75ae2abca31119167dbd42ce1"

  url "https://github.com/andersonflima/homebrew-tap/releases/download/crow-cockpit-#{version}/Crow-Cockpit-#{version}-arm64.dmg"
  name "Crow Cockpit"
  desc "Desktop cockpit for the crow multi-agent setup — live roster, chat, resources"
  homepage "https://github.com/andersonflima/homebrew-tap"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Crow Cockpit.app"

  zap trash: [
    "~/Library/Application Support/dev.crow.cockpit",
    "~/Library/Caches/dev.crow.cockpit",
  ]
end
