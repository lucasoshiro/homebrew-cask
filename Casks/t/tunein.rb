cask "tunein" do
  version "1.27.0"
  sha256 "cb85ddaf78688ccb7a83bcae54bb13c9147dcce93917b4bb656e6cce37491000"

  url "https://cdn-desktop.tunein.com/release/TuneIn-#{version}-universal.dmg"
  name "TuneIn"
  desc "Free Internet Radio"
  homepage "https://tunein.com/"

  livecheck do
    url "https://gemini-desktop-prod.s3.amazonaws.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  app "TuneIn.app"

  zap trash: [
    "~/Library/Application Support/TuneIn",
    "~/Library/Caches/com.tunein.desktop",
    "~/Library/Caches/com.tunein.desktop.ShipIt",
    "~/Library/Logs/TuneIn",
    "~/Library/Preferences/com.tunein.desktop.plist",
  ]
end
