class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.7"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.7/gate-0.8.7-aarch64-apple-darwin.tar.gz"
      sha256 "700367512ae0d19f851453898209a243f231d5caab669d386175808b6d71c736"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.7/gate-0.8.7-x86_64-apple-darwin.tar.gz"
      sha256 "5680970f341bc6e29b5a7064650c96929a2734eab45f4627ec425fd778fa9c7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.7/gate-0.8.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42b49e0b1c3d24d4044e43fd9abb1a607904c9114b52a0b6639fa27b173f45cb"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.7/gate-0.8.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce22224f512a0a092bcce14c03ac45130324b1d1688ddde0acf6314eae547134"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
