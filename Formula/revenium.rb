class Revenium < Formula
  desc "CLI for the Revenium AI Economic Control platform"
  homepage "https://github.com/revenium/revenium-cli"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.3/revenium-darwin-arm64.tar.gz"
      sha256 "bfe9c2e6b5536a92537164adac86ac89ec25bc45e4e3939050a45e56d6d6586e"
    end
    on_intel do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.3/revenium-darwin-amd64.tar.gz"
      sha256 "b4b220ec79610cf3cd0a34f34ca41eb0ddfd6ef4542a07cf5861635a087eda11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.3/revenium-linux-amd64.tar.gz"
      sha256 "fb2d156385c4b6b21a0d6c58f7505e0ee1d89dc162d7261fa7461cb68a8a402d"
    end
    on_arm do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.3/revenium-linux-arm64.tar.gz"
      sha256 "b6856e29e9d6bdca013e89842bfa4a840f1d82c81e5e6b8b96ef9f72eeb26b20"
    end
  end

  def install
    bin.install "revenium"
  end

  test do
    assert_match "1.0.3", shell_output("\#{bin}/revenium version")
  end
end
