cask "momentary" do
  version "0.2.0"
  sha256 "db34f272fa32360f34aeeb137607eae01d12063d5738b626f763fbdd1340e718"

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
