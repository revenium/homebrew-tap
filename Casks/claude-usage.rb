cask "claude-usage" do
  version "3.3.4"
  sha256 "bce6a4b4acdaf6191474b253bfeef78d52d7baacc5c1eb63abeea5c2f75846f8"

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
