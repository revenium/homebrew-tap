cask "revvytach" do
  version "4.0.0"
  sha256 "fa61e1c9439c262a07f0291eae6c1a1873f5f24f0708205830919090feca69cf"

  url "https://github.com/revenium/RevvyTach/releases/download/v#{version}/RevvyTach.dmg"
  name "RevvyTach"
  desc "Monitor Claude and Codex subscription usage from the menu bar"
  homepage "https://github.com/revenium/RevvyTach"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "RevvyTach.app"
end
