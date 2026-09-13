cask "revvytach" do
  version "4.3.0"
  sha256 "be4e3d72a8403a4215bb0583b3aeea0fbe63f3396ea02b60561d775d6c798f97"

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
