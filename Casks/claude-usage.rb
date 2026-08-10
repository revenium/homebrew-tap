cask "claude-usage" do
  version "3.3.7"
  sha256 "28b334ecbc956f38b8bcba1228ae17c16e5c6e3922caf1c6a5f8bd43e98a2b2b"

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
