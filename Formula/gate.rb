class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.11.6"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.6/gate-0.11.6-aarch64-apple-darwin.tar.gz"
      sha256 "da0771bf8449e1a70bd3b62e9be32d160360c1e3bf21b82a19b18c1f4616793e"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.6/gate-0.11.6-x86_64-apple-darwin.tar.gz"
      sha256 "325b25705e1112f2703152dba9c24c532f078f0c1815bf4080a14a69adc1fae7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.6/gate-0.11.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cb949cde6d41d0faafcc51137daa3000918ef3a45574003769d6edc58e213a1"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.6/gate-0.11.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42023307a3dffee44df44dea6fb461b7a11f833f6a25d96ee7f7cfd0affc367d"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
