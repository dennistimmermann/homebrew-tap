cask "keychange" do
  version "0.9.1"
  sha256 "655268c3793d288349824765ba2398b63f41d86bd55d4fbd89e507e32dbbfb5a"

  url "https://github.com/dennistimmermann/keychange/releases/download/v#{version}/Keychange.dmg"
  name "Keychange"
  desc "Switches the input source to match the keyboard you type on"
  homepage "https://keychange.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle owns updates; without this brew would fight it on upgrade.
  auto_updates true
  depends_on macos: :sonoma

  app "Keychange.app"

  zap trash: [
    "~/Library/Caches/com.tmrmn.Keychange",
    "~/Library/HTTPStorages/com.tmrmn.Keychange",
    "~/Library/Preferences/com.tmrmn.Keychange.plist",
  ]
end
