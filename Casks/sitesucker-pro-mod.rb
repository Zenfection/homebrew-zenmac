cask "sitesucker-pro-mod" do
  version "5.1.9"
  sha256 "0bf4f2b98cb6951edcb42ff26db0ff375e7c25e586d5e1dede097fc5b53ce45a"
  url "https://github.com/Zenfection/macos/releases/download/1.0/SiteSucker.Pro_#{version}.dmg"

  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://ricks-apps.com/osx/sitesucker/history.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SiteSucker Pro.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end
