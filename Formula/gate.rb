class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.5"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.5/gate-0.8.5-aarch64-apple-darwin.tar.gz"
      sha256 "0e2de6e84e54f84549359adfab5747cb0b5c4cf17f5ba5e74ee9e51f90733ba0"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.5/gate-0.8.5-x86_64-apple-darwin.tar.gz"
      sha256 "302f3775d68ec6742a8ca5b9cf6c125eca30b0b7c15aa865d88f0da50c4763dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.5/gate-0.8.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a28a59db859b4a14fb054ce54983ca3b9dc2f7df9cc0e190c4eced07ab4fb0d"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.5/gate-0.8.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e974d3ea743d505bcbefa1f55f105f82940a7229b4ed690abfe71d28ac25c18e"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
