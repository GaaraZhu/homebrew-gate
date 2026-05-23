class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.4"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.4/gate-0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "e803fc5d9500139e9c4faeec78aec0d1283e67530fb648a29819464eb9d8b0f5"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.4/gate-0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "8a7e5ebc2f2d1a03697db58ded510674a1a19de2a855fac059a25bc7d768e975"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.4/gate-0.8.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8fe43036aaec7c7905a27a573f31430bf132730579d57b137de6f8eb28d6c71"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.4/gate-0.8.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "907d584a38d73f6c8b8e62d1e49a02c5e5c6394a5ad9e056a6b12c9b6c8ed5ca"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
