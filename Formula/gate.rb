class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.10.0/gate-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "c2d6c09cad23c7d45402c0c05167f5a1bd2567fb2e8308a206b40d0b312dfea7"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.10.0/gate-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "ea941d7aa6af167df8f840657471d25038f0494ab03dfaf162eabe9745d648fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.10.0/gate-0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10e9e7c5633a000b031510ec23a14b6eb4b6a042ab45343c17b7a02850228585"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.10.0/gate-0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4458453e77cf4ffd25d0643840841b11094c96077aed2dfcb1c73d39b536b5a7"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
