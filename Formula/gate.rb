class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.8"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.8/gate-0.8.8-aarch64-apple-darwin.tar.gz"
      sha256 "9238a7d9b4829cfea83aa8da26fba7a90e1ad67a81236882d4b4481609254ae9"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.8/gate-0.8.8-x86_64-apple-darwin.tar.gz"
      sha256 "6c653a89e3156838e3e477fbe945f74e7697992ed3b717bdd53c8c17931c4317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.8/gate-0.8.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8aee29780c3ae2ee47a35acfc1e6adc349f866b6fac31e63f882aec0b6b0b81"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.8/gate-0.8.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "401c94a09ddd446da5b5ce6489dc41abb2ce766a76a20ce2eb81fecb62b8e982"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
