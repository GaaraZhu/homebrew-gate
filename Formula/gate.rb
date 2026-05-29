class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.0/gate-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "4c69e854ed5c5b44cece99200c8162410140f9eb98a004d2ed8a9358c5746571"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.0/gate-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "21fcd2794d4a5121e9d484c543861445adce30de3943551221aae07d67ac7699"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.0/gate-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f884ab4e4a5252de984bdd438c370fe6a64605b87f5635a3dd501e7961906cb"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.9.0/gate-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74478ed12f4da4e598572d7e8828a2d4014e1a8a52a247b40b9fcadf95c7e91c"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
