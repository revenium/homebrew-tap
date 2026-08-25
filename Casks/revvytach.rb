cask "revvytach" do
  version "4.0.10"
  sha256 "f36f76dbe19914ee25babea06880c3e4f13cd9fb5e0b5d5f0b51f87ea3ed1018"

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
