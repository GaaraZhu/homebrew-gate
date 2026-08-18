class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.0/gate-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac951c6413ba6514273966ee7f9cee35960e8687764f961209bffb44d4deb97b"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.0/gate-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "2d56b4426fc9f8f57fab760f91b43744d4cef16d3d71f07b0cebd143c3bf52d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.0/gate-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa2d6c3eacaf75b083a9737910eb49c06fb59d58d665544062a072912abba6d5"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.0/gate-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a9514b1cc4db108cb55c47aaf4b31d427acd5d73d2c487c136c02c4bb575d9a"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
