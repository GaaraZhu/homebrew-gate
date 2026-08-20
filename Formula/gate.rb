class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.11.5"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.5/gate-0.11.5-aarch64-apple-darwin.tar.gz"
      sha256 "1f7ab365a1a039ffb36fe3e18118f6e68a7dfad4cd4dad5bcefef9d43d45a9db"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.5/gate-0.11.5-x86_64-apple-darwin.tar.gz"
      sha256 "a29900f5967c036017defe857ec160312ecdaf3a4fbef4e8e1d41e4ee221b893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.5/gate-0.11.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e05560e80cdc85938aba43662faa8b633df837326aba9994f596230f4c4d366a"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.5/gate-0.11.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5806c1444250d8492a2d69968367b09965cf7f8599819e54b2bfc5527037321f"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
