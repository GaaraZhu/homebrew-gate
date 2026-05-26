class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.9"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.9/gate-0.8.9-aarch64-apple-darwin.tar.gz"
      sha256 "30ee2f88b4fe655ba0cdaebf1b67e9c6060f741eeb50144d62155bf07ff2bc11"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.9/gate-0.8.9-x86_64-apple-darwin.tar.gz"
      sha256 "8f64d8702323658f8105c235b7c9a32117f449d2b3365337f322e547a5359199"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.9/gate-0.8.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4686859208fa3bd78276c66e3f16964c6608fdea6783c11519a230b383f89fa2"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.9/gate-0.8.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53db24585a2e9bf971feae49fa49891b3e29141bb81b9b7e74508e578e5cf19b"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
