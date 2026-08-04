cask "claude-usage" do
  version "3.2.0"
  sha256 "823f56100562265c812c6072b7d4009aed82768b73f57e4e9b626378464aa6d2"

  url "https://github.com/revenium/Claude-Usage-Tracker/releases/download/v#{version}/Claude-Usage.dmg"
  name "Claude Usage"
  desc "Monitor Claude and Codex subscription usage from the menu bar"
  homepage "https://github.com/revenium/Claude-Usage-Tracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Claude Usage.app"
end
