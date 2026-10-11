cask "teya-code-station" do
  version "1.5.0"
  sha256 "9786c7aa292815674eb9cca5b1555bb1617b7630185fbd04aeb94caaa079bf2c"

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
