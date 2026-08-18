class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.11.1"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.1/gate-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "39b58d7e39f7ebc649b3f490e7561e90f1c2f15c6e14f66f982225e04ef23f4a"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.1/gate-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "8903b81a18b5e4aba792c53cf526d866ca81fdc53132418b0d30ed59ce556304"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.1/gate-0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ed68e848c1cca391c6f14999fd3f1a60123d946e62f19539c21c276e1e1802a"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.1/gate-0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f0de76200a47a87466948b0538350a91f05f2ff6e9cf680ff89174e064e9ffe"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
