class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.0/gate-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "5967fe2e42ef2cad947f0bb647eb3e553ef917edebd8793b2ef631252491687b"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.0/gate-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "5bac2ebdf2671e26ecd6ae0ae093f681c43c088e4e726b7f936bb1466c2b9712"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.0/gate-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be135edffb30e7febcb943f0efb1a97ff3319dbc32fc0a2d1f79a9d7cf7419b1"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.7.0/gate-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "100996c10f1b033aee059ea30074d7745411f7135503771f00be5a9719d52466"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
