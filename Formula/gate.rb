class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.12"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.12/gate-0.6.12-aarch64-apple-darwin.tar.gz"
      sha256 "984925cb651a1e37965dd8a00a0a1299d942b9989bc7f87de55d1b9f6283027b"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.12/gate-0.6.12-x86_64-apple-darwin.tar.gz"
      sha256 "944d39a7f4861ff79b5f31f210d95158464c60a71ada6ba3eaa74716a1ec5ff0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.12/gate-0.6.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "974132a7ce83b833ef4a9698841b5f6dc80c187e0f31b6ad7e00d5782f6225b3"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.12/gate-0.6.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77fb8a6429bd1365fd9c6e10fd7c49386ec156c932c2fb7a6efd300e82ef7a20"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
