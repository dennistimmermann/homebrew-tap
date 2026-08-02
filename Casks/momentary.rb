cask "momentary" do
  version "0.1.0"
  sha256 "dc1dda2a82fde9b1f76d59f65f0204134f4f2b62da102f5286a6a2ada4d547e5"

  url "https://github.com/dennistimmermann/momentary/releases/download/v#{version}/Momentary.dmg"
  name "Momentary"
  desc "Gives modifier keys a second purpose when tapped rather than held"
  homepage "https://dennistimmermann.github.io/momentary/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle owns updates; without this brew would fight it on upgrade.
  auto_updates true
  depends_on macos: :sonoma

  app "Momentary.app"

  zap trash: [
    "~/Library/Caches/com.tmrmn.Momentary",
    "~/Library/HTTPStorages/com.tmrmn.Momentary",
    "~/Library/Preferences/com.tmrmn.Momentary.plist",
  ]
end
