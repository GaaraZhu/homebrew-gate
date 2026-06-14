class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.9.4"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.4/gate-0.9.4-aarch64-apple-darwin.tar.gz"
      sha256 "5a99cfb95feffe0db19b42ec6f3eab50e2b303fc2b918755f14902666f58e588"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.4/gate-0.9.4-x86_64-apple-darwin.tar.gz"
      sha256 "5ddf21ff16a94a46de8b59555ed0b422b34916fac4d0316c7b2394438081b397"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.4/gate-0.9.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "627ab1f117b94007f5372d99ae0f00adbff84d48e1f94e22f24b34abe0bccf37"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.4/gate-0.9.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb0ea3510d596f4deb93ea2854d07df85e747849e373205334c55887ce49605c"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
