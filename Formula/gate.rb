class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.9.3"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.3/gate-0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "bcbde1326e90eec60bf6c2d6ac0bec49c99d03b671d07a97b7b070b963a074d8"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.3/gate-0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "3b2e7fc0802a2984384642734e4fbcdad6d7625c52c6c9faa0d12d8104a8ccc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.3/gate-0.9.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee7bce13e462ba2140d8c703fc53212ed0845e3291a1f5fc371f84be7a9738fa"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.3/gate-0.9.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac209e475cebc5576517b15b11fdb30cf51dfdd6caa6c6a0bdff7fa292afc142"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
