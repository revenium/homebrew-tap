cask "claude-usage" do
  version "3.4.0"
  sha256 "fa59133c2b7d01f1659dd55fb7f662e04fb315b2629a486de67419f63414fbe2"

  url "https://github.com/revenium/Claude-Usage-Tracker/releases/download/v#{version}/Claude-Usage.dmg"
  name "Claude Usage"
  desc "Monitor Claude and Codex subscription usage from the menu bar"
  homepage "https://github.com/revenium/RevvyTach"

  deprecate! date: "2026-08-15", because: "it was renamed to RevvyTach"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Claude Usage.app"

  caveats <<~EOS
    Claude Usage Tracker is now RevvyTach. This cask installs the final
    release under the old name (v3.4.0), which will offer an in-app update
    to RevvyTach. To install the renamed app directly:

      brew install --cask revenium/tap/revvytach
  EOS
end
