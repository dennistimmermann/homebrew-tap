cask "keychange" do
  version "0.3.0"
  sha256 "12d3f8370b83c869684f06adc542123f575218721011ac3b1ca96a754b7cd6e7"

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
