class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.10"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.10/gate-0.6.10-aarch64-apple-darwin.tar.gz"
      sha256 "14a16c09ea13dfa111169da95401fc1c5e27bf6c125d2fe531a1945c64bb78f1"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.10/gate-0.6.10-x86_64-apple-darwin.tar.gz"
      sha256 "5b44537bef2c958498219ebde33df40049226202f951bac7fb3aeed9505af8dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.10/gate-0.6.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1913e8a4f550c8c2f52322ffd960b5d4827a707be9ad5cab34e027504847dafb"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.10/gate-0.6.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d971696494f3c3787a1557dfd7f557d1d4b2d7dc4b9acc16bf73a9963d2fbfcb"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
