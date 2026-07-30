cask "keychange" do
  version "0.9.0"
  sha256 "d55267dad57d664c5720f4e97b8e09abb5828d1f425f7b2a939eae7005d47215"

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
