class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.0/gate-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ee9b1fd7b790350498edea3b038afa8fa7391e5bc07d25407ef86e0ef0407b1"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.0/gate-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c9e68bcfe9abc4a030a84ec534c6235e9194d063d9cec898469dd3420ae8c0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.0/gate-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "949fb24be0d220471700d23226b38808ca922857e33e1851627e2cbdce940793"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.8.0/gate-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dcf6d86136213aca1f1280847a11f399117f807edd3528e7d198e120ad310d34"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
