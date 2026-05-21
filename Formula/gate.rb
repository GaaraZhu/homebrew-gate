class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.2"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.2/gate-0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "976d29221901ef195ce29acfdb5d1ffd26f4381b228c87c07133881f5f826273"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.2/gate-0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "e47b26002a5a12a51942a1facb9479a752b39dc7be7f54eed0853d30ac382c27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.2/gate-0.8.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "309505e302d2dd8660055134c356a99f628b0a9ed0508c25ddaf18a86621d04d"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.2/gate-0.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9541776e5156eb1ab599b4ef7f75988971ffff701dc799ff5deb9d66ab694ef"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
