class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.11.3"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.3/gate-0.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "7141a68826101dcac5b2f6a19deaa8161d19c7f056771a2bcd87f42f296f40ef"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.3/gate-0.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "037fe680d4d9a4c95c9e6b7d169e4b433aa98488e7a883fbb17afa24d35d5a57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.3/gate-0.11.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb8c8e2f639604f5129782d38a263d3fe0a3f365f69014f9af70dafaa46fc1a1"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.3/gate-0.11.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "227136f2fe8bfd968da614612555c6434f24a6a5dd00c433480ed55b49e40433"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
