class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.9.2"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.2/gate-0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "456d01db00443f176e9e7d342951437541cc07382146a300f9ad94b1db01c669"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.2/gate-0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "9f90c7349db72483445f669e3a189ee07742f39dd416aa17068eb69aa505cb02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.2/gate-0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a5e227c80ee5d0e4f2c0fdb7065b25fa380ce48a60d3b256a41266c11554858"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.2/gate-0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0fce002024b4be6d6b8478f5d4d7c99aef48501ee9dd4dbf83ed6eada709263"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
