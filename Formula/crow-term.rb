# Generated from crow-term packaging/homebrew by scripts/update_tap.py; do not edit by hand.
class CrowTerm < Formula
  desc "Native terminal with persistent sessions, built in Rust"
  homepage "https://github.com/andersonflima/crow-term"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.2/crow-term-0.1.0-alpha.2-macos-arm64.tar.gz"
      sha256 "5ce78e99d8b929a070ad8ed089e617301d8040aef49b3916f114497e6ba44516"
    end
    on_intel do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.2/crow-term-0.1.0-alpha.2-macos-x86_64.tar.gz"
      sha256 "d407756643d976654bd80bc25483af502212a950385fe4cb395b28c4e8075d84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.2/crow-term-0.1.0-alpha.2-linux-arm64.tar.gz"
      sha256 "a089d40c54409a6d1d02abacf24ad31611318a9eb78bdbc262186cafd0878209"
    end
    on_intel do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.2/crow-term-0.1.0-alpha.2-linux-x86_64.tar.gz"
      sha256 "29a1de83dd70298cd908a3581c34d33640b76e246cdc882b0dde1b4c7d2866ae"
    end
  end

  def install
    # Keep the archive layout intact: the binary (on macOS, a link into the signed
    # Crow Term.app) finds shell/setup.py next to itself or in the app's Resources.
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"crow-term"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crow-term --version")
  end
end
