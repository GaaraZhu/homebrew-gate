class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.7.1"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.1/gate-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "6e36c49d50e9e6fe2be55da7a61b8374f389e4605f19ea3d8ee0188d27a6bf42"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.1/gate-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "c017a815b8a54a48c5c2e889781120595e203e9566643f4ed5b528d2a37d35c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.1/gate-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c429d59cb8546bbe55c5b59b79613c6f4c2e7427c282a402c8fc95e9559a21a"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.1/gate-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "240b7ec11e17c4704ee5d4291a2f2f9b9b84afd122a5d8ade2de2fc365b2342f"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
