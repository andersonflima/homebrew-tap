# Generated from crow-term packaging/homebrew by scripts/update_tap.py; do not edit by hand.
class CrowTerm < Formula
  desc "Native terminal with persistent sessions, built in Rust"
  homepage "https://github.com/andersonflima/crow-term"
  version "0.1.0-alpha.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andersonflima/crow-term/releases/download/v#{version}/crow-term-#{version}-macos-arm64.tar.gz"
      sha256 "21e8c3fc90960a3a54872e4b61dc22e383a33345d364c7a0a28df16677502c95"
    end
    on_intel do
      url "https://github.com/andersonflima/crow-term/releases/download/v#{version}/crow-term-#{version}-macos-x86_64.tar.gz"
      sha256 "cfe55c7d7b3cb603eeb111a1ee315e52c357dd6012c48a5941613a59b75ebd33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andersonflima/crow-term/releases/download/v#{version}/crow-term-#{version}-linux-arm64.tar.gz"
      sha256 "6ba6ce1b475b9c443505b4cd06484757f116069cb6f188d813e17d7eb82303cc"
    end
    on_intel do
      url "https://github.com/andersonflima/crow-term/releases/download/v#{version}/crow-term-#{version}-linux-x86_64.tar.gz"
      sha256 "d72f9918a3a101c9557234f72431b516cd4d0e054eb996093504a84d20c25de7"
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
