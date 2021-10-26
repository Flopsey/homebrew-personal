cask "migros-bank-e-banking" do
  version "8.1.2609"
  sha256 "78d65742efaaa4d35156d2fb86309eb872ce62091015eac4b1211a7e1686ccda"

  url "https://download.migrosbank.ch/mid/MigrosBank-EBanking-Mac-#{version}.pkg"
  name "Migros Bank E-Banking"
  name "Banque Migros E-banking"
  name "Banca Migros E-banking"
  desc "E-banking app"
  homepage "https://www.migrosbank.ch/de/privatpersonen/e-banking.html"

  livecheck do
    url "https://www.migrosbank.ch/de/e-banking-update.html"
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
