cask "momentary" do
  version "0.3.0"
  sha256 "4f083fd1abac677a950d6d3a79d8f5763b935f4f24254b828a81d2ec230d4a8c"

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
