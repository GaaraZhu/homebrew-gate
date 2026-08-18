class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.11.2"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.2/gate-0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "82a1762c57aee96f00fa6e85183818a3ab3b3587cd8e399204cb5d835dcc9987"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.2/gate-0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "1af89aab3227800ccca15b92fb1b2f2a36ba6a9a8aebcfd2dafc28990f2c8c45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.2/gate-0.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67a64f062341aa3d635b98264c25d0922653fc430c4ffc776069b5ff13d8cd66"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.2/gate-0.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ea3f074ad953cf512e8597d5a225adc07081354198df67097e917e07f44eeef"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
