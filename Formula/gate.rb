class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.11"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.11/gate-0.6.11-aarch64-apple-darwin.tar.gz"
      sha256 "23679578359bbb4fe8805d7e9b9d851e9c4f78bde04415c5f627ca97fa1953de"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.11/gate-0.6.11-x86_64-apple-darwin.tar.gz"
      sha256 "aff2c22113ecce929de4bf862a9ba4ceca3a252f3e6ada7bdc5cb4e013197eb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.11/gate-0.6.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e8cb892aabbb919730c58e430e42a37d5085f90dd97a39dfe801869a96266f7"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.11/gate-0.6.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ced74e4fa4791820c89f92af9146ea87cc51cbe6ff77ba1f87960e5dbe280134"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
