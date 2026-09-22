cask "revvytach" do
  version "4.3.2"
  sha256 "84032db6957c717e479a4947baa8bc7197fb5aaf910d83cb6486b410bdd09d5e"

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
