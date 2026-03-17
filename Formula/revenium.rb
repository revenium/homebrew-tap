class Revenium < Formula
  desc "CLI for the Revenium AI Economic Control platform"
  homepage "https://github.com/revenium/revenium-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.1/revenium-darwin-arm64.tar.gz"
      sha256 "9a609761c7e459865570284f48b72596426ddd1f6f52a9e6fd1b520ae7a00487"
    end
    on_intel do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.1/revenium-darwin-amd64.tar.gz"
      sha256 "941baff8fa1223bb1ad9c83b71de1642bd4236c63ab0452ff2eb6eb737d8d24d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.1/revenium-linux-amd64.tar.gz"
      sha256 "97823819f14ee91ce5e939e2c967d753a1212ed17353dc79637c389f23a7a09c"
    end
    on_arm do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.1/revenium-linux-arm64.tar.gz"
      sha256 "45c52c9aeeb2f67b71fc79bf79436aaedb1821f00034e34f2b568d76caf27b76"
    end
  end

  def install
    bin.install "revenium"
  end

  test do
    assert_match "1.0.1", shell_output("\#{bin}/revenium version")
  end
end
