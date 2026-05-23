class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.6"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.6/gate-0.8.6-aarch64-apple-darwin.tar.gz"
      sha256 "c6fa4c547fb24bb2ffcb2753fc358b01a7122af2158383780440d49210d26e9d"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.6/gate-0.8.6-x86_64-apple-darwin.tar.gz"
      sha256 "5e02365fcd8d327aa76a10aeb4f2e290d0fbe1b6683bb3025a9953791f270468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.6/gate-0.8.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "007a528baf922ac2a1d631c35b7b37038babe7f1289940f7ee744083f1042fa3"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.6/gate-0.8.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31a0661f12cad807455fca2fca01de552308e22f6a1a64e31f977620363936cb"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
