cask "migros-bank-e-banking" do
  version "8.1.2711"
  sha256 "dd41ebe53b65ef5a4260a0253bfcee2a8c5d273a8e178ffaf21f689e525b4b5a"

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
