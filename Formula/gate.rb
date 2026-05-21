class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.1/gate-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "804422e5650711206b19caf0cf6af53c9dbc2f1e7c9cf0f784d52dae542bbefd"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.1/gate-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "766ef41ff4cfa08398cb5330b84499a8e1a3f58542c225a70f6b01cb31f08d11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.1/gate-0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d47093bebcf20ae4c5ce9f1f2ae9296e5fc8c205d5c72204d2cdf1a64f9f00bf"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.1/gate-0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9065fc5af2aabab50dc4cfcca5bde4ed117d97b6dc9e8fd83b2f583a3935f35"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
