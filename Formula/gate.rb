class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.3"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.3/gate-0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "fd6247503a4a3ef00fd77e0bc1bca13ab3a69eefa0e91c980ea08ec166a5261e"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.3/gate-0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "c7ba15b447f9c1858e3e1dfb7eb2afd1e24bd61c3b399febce42b1ccff1d1fc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.3/gate-0.8.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b43630e60d37361092d0f7d5a52b25d45980892285b0a3ffc25cdd7e28e7a74"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.3/gate-0.8.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1e82399963c438b071cc94f28853d4338538e52d6393391f02433ec82be92bc"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
