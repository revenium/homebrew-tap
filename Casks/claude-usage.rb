cask "claude-usage" do
  version "3.2.1"
  sha256 "1bcbe1b978eb829254518a9ee5b528a851c2052342dce8eb85b59e2a9c943727"

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
