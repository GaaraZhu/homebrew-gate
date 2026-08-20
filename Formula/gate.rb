class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.11.4"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.4/gate-0.11.4-aarch64-apple-darwin.tar.gz"
      sha256 "28c68ab5b4c6dc9f0706f18b024bc38513e6bda4bbd09f787b2ccbd969a2b6df"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.4/gate-0.11.4-x86_64-apple-darwin.tar.gz"
      sha256 "e673fe2d6850eaad1645432050102ea3fd817117be3224e955b1cab8714fcee8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.4/gate-0.11.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d99997c2da34a803ae1ed80ae3106e0dac57cc17c995e8bf7268f87190d2501"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.11.4/gate-0.11.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "314fc31f95b2b60dad9a6936d89aa1f6b1be001d03cef9eb7e78b6a255861dcd"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
