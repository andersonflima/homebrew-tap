# Generated from crow-term packaging/homebrew by scripts/update_tap.py; do not edit by hand.
class CrowTerm < Formula
  desc "Native terminal with persistent sessions, built in Rust"
  homepage "https://github.com/andersonflima/crow-term"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.4/crow-term-0.1.0-alpha.4-macos-arm64.tar.gz"
      sha256 "8a40d02bee8ec8bdbf103c53b1270a5c751e0da6424d3854ee252e06cacb4863"
    end
    on_intel do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.4/crow-term-0.1.0-alpha.4-macos-x86_64.tar.gz"
      sha256 "ef1ec7b68d7d69eeb4fc852ad571064b112f1dbe495177f60e0d9c6da2d3041f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.4/crow-term-0.1.0-alpha.4-linux-arm64.tar.gz"
      sha256 "d4f971618538374f3c8ef1f475eb4a149e8672e7631c5c34d1053dfa4cefcc0a"
    end
    on_intel do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.4/crow-term-0.1.0-alpha.4-linux-x86_64.tar.gz"
      sha256 "798787b80e0c2391d09bb9ac7c65d91c22e14fa3dbec31a19107f2fcce1a4466"
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
