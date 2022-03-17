cask "migros-bank-e-banking" do
  version "8.1.2611"
  sha256 "f5369094cd82ae82f440505d0647e5a854acd49bebaace2a636a37e0adafd759"

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

  pkg "MigrosBank-EBanking-Mac-#{version}.pkg"

  uninstall pkgutil: "com.kobil.midappqt.PROD"

  zap trash: [
    "~/Library/Caches/com.kobil.midAppMacOS",
    "~/Library/Preferences/com.kobil.midAppMacOS.plist",
    "~/Library/Saved Application State/com.kobil.midAppMacOS.savedState",
  ]
end
