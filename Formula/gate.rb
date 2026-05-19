class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.7.2"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.2/gate-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "3b7940c4ea52f1552efc8add99931ba414e39553a63ba403aeba9aa095bb6c49"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.2/gate-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "9e5807916a91dcd1e699aebb690c2a3aeeb96d397734b4a01d3e0e7eecf44620"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.2/gate-0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07fc78fafc13da30ccf3dfe514e0f54c822dd545ab90bce7cc0021427fd2f002"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.2/gate-0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8eaa59d96a1c4e408ed68dbc27c9b83fdf0e34f2c9353e4c74519b21dcdf16c1"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
