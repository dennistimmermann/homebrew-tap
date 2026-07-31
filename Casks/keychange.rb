cask "keychange" do
  version "0.10.0"
  sha256 "72f0883778aafb4883dd6acbb54999c5608cc89d70c4ada978f9e10d1b6a8ca0"

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
