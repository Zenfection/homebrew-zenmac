cask "betterzip-mod" do
  version "5.3.2"
  sha256 "4521465b24dfd1b987c1da162abaaea5063a4f88460a38db3cff4bb5e9ca84d9"

  url "https://github.com/Zenfection/macos/releases/download/1.0/BetterZip_#{version}.dmg"
  name "BetterZip"
  desc "Utility to create and modify archives"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://macitbetter.com/BetterZip.zip"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "BetterZip.app"

  zap trash: [
    "~/Library/Application Scripts/com.macitbetter.betterzip.findersyncextension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macitbetter.betterzip.sfl*",
    "~/Library/Application Support/com.macitbetter.betterzip",
    "~/Library/Caches/com.apple.helpd/Generated/com.macitbetter.betterzip.help*",
    "~/Library/Caches/com.macitbetter.betterzip",
    "~/Library/Containers/com.macitbetter.betterzip.findersyncextension",
    "~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip",
    "~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip-setapp",
    "~/Library/Preferences/com.macitbetter.betterzip.plist",
    "~/Library/Saved Application State/com.macitbetter.betterzip.savedState",
  ]
end
