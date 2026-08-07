cask "keychange" do
  version "0.11.0"
  sha256 "445e649ba8d6c140366bfa71e0de5c3b8ef0715fbcd118dfe5697ba439eb02c7"

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
