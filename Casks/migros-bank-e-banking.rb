cask "migros-bank-e-banking" do
  version "8.1.2708"
  sha256 "09ab679da73c66950087e476e5fb8ffb8b083aeb59552092afb5e44d5dd0966c"

  url "https://download.migrosbank.ch/mid/MigrosBank-EBanking-Mac-#{version}.pkg"
  name "Migros Bank E-Banking"
  name "Banque Migros E-banking"
  name "Banca Migros E-banking"
  desc "E-banking app"
  homepage "https://www.migrosbank.ch/de/privatpersonen/e-banking.html"

  livecheck do
    url "https://www.migrosbank.ch/ueber-uns/kontakt-support/e-banking-support.html"
    strategy :page_match
    regex(%r{href=.*?/MigrosBank-EBanking-Mac-(\d+(?:\.\d+)*)\.pkg}i)
  end

  auto_updates true

  pkg "MigrosBank-EBanking-Mac-#{version}.pkg"

  uninstall pkgutil: "com.kobil.midappqt.PROD"

  zap trash: [
    "~/Library/Caches/com.kobil.midAppMacOS",
    "~/Library/Preferences/com.kobil.midAppMacOS.plist",
    "~/Library/Saved Application State/com.kobil.midAppMacOS.savedState",
  ]
end
