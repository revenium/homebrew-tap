cask "revvytach" do
  version "4.0.5"
  sha256 "857cb0210ef6bd533f8869b80cf755161ac2223e5aed1ce2121fc5d2f83cb9b8"

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
