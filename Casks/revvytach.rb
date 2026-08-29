cask "revvytach" do
  version "4.2.0"
  sha256 "4d522a31fd7fc75e0254060b8977a5562fcdb70b99f2799bd95f1a73474e0fd6"

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
