# Generated from crow-term packaging/homebrew by scripts/update_tap.py; do not edit by hand.
class CrowTerm < Formula
  desc "Native terminal with persistent sessions, built in Rust"
  homepage "https://github.com/andersonflima/crow-term"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.3/crow-term-0.1.0-alpha.3-macos-arm64.tar.gz"
      sha256 "83d607af26c4684fceba16f01f636fb99bf5868954c309de63b2e6d508295017"
    end
    on_intel do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.3/crow-term-0.1.0-alpha.3-macos-x86_64.tar.gz"
      sha256 "9667e99af3b086741adea65d7113682a16d6009f0017ac13bcf32b5aad400b53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.3/crow-term-0.1.0-alpha.3-linux-arm64.tar.gz"
      sha256 "2a648dce4f503fc99cf21d75f8516d0de195214fbe26d6304220c4968f69af4c"
    end
    on_intel do
      url "https://github.com/andersonflima/crow-term/releases/download/v0.1.0-alpha.3/crow-term-0.1.0-alpha.3-linux-x86_64.tar.gz"
      sha256 "9e76e3f4aac4e36fb95bd8b741ac194d916b02f6dda51b32b51ae6e6d903e25d"
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
