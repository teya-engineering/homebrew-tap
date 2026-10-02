cask "teya-code-station" do
  version "1.3.4"
  sha256 "b50a727853d94d891dba3a02ec98bb2dc02c03929e8c0d6b944494cc9985b515"

  url "https://github.com/teya-engineering/code-station/releases/download/v#{version}/TeyaCodeStation-#{version}.dmg"
  name "Teya Code Station"
  desc "App for running Claude Code, Codex, and GitHub Copilot CLI on local projects"
  homepage "https://teya-engineering.github.io/code-station/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Teya Code Station.app"

  zap trash: [
    "~/.code-station",
    "~/.config/claude-conductor",
    "~/Library/Application Support/com.teya.code-station",
    "~/Library/Application Support/com.teya.conductor",
    "~/Library/Caches/com.teya.code-station",
    "~/Library/Caches/com.teya.conductor",
    "~/Library/HTTPStorages/com.teya.code-station",
    "~/Library/HTTPStorages/com.teya.conductor",
    "~/Library/Logs/com.teya.code-station",
    "~/Library/Logs/com.teya.conductor",
    "~/Library/Preferences/com.teya.code-station.plist",
    "~/Library/Preferences/com.teya.conductor.plist",
    "~/Library/Saved Application State/com.teya.code-station.savedState",
    "~/Library/Saved Application State/com.teya.conductor.savedState",
  ]
end
