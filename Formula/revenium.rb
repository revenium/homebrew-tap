class Revenium < Formula
  desc "CLI for the Revenium AI Economic Control platform"
  homepage "https://github.com/revenium/revenium-cli"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.2/revenium-darwin-arm64.tar.gz"
      sha256 "4595a5553d7dba6aff0149f0476dc378ab60bdffe0fc685d683e09ea243cc566"
    end
    on_intel do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.2/revenium-darwin-amd64.tar.gz"
      sha256 "b7332ae965e45b8e334f8f2276be50730efd8a0e7c364423928fe0244025b3ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.2/revenium-linux-amd64.tar.gz"
      sha256 "7dc407adb6b0bbe3519aa0d07dd5ba76c46c9dd9154ee346af259a52c5f6a78b"
    end
    on_arm do
      url "https://github.com/revenium/revenium-cli/releases/download/v1.0.2/revenium-linux-arm64.tar.gz"
      sha256 "832c4ab8e5fb6a4d5cefda59f24983683b05d731c17d6e31ebfeb0db8ab98de2"
    end
  end

  def install
    bin.install "revenium"
  end

  test do
    assert_match "1.0.2", shell_output("\#{bin}/revenium version")
  end
end
