cask "claude-usage" do
  version "3.3.1"
  sha256 "777fe7540fb1d77d0a9f98fd578d274cf3e0baf81c0b9869acb81d210d0547ac"

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
