class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.9.1"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.1/gate-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "5a4bc7a0bb4f6b7be5579a281b0487a76c7760fae4575206835dab022f498077"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.1/gate-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "d21b388d97928e0caa2b5d4fb973afea9fa48916429866aeb58f997adb2cbb84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.1/gate-0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19267fdb76c93cdc8076ff1a371c17262ef48773da1e1de851c7f7c8064327e6"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.1/gate-0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "744a189429c596b9216ae09d51b224391e87a421a22f3aed3dd8519a44c70e21"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
