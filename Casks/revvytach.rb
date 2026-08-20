cask "revvytach" do
  version "4.0.4"
  sha256 "d7bac5a9fc41c258159ae9a771fdb498dba7e2bb2d17f4a0faf93ebacbc535b5"

  url "https://github.com/revenium/RevvyTach/releases/download/v#{version}/RevvyTach.dmg"
  name "RevvyTach"
  desc "Monitor Claude and Codex subscription usage from the menu bar"
  homepage "https://github.com/revenium/RevvyTach"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RevvyTach.app"
end
