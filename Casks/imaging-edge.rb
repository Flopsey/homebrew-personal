cask "imaging-edge" do
  version "imaging-edge"
  sha256 :no_check

  url "https://support.d-imaging.sony.co.jp/disoft_DL/imagingedge_DL/mac?fm=dt",
      verified: "d-imaging.sony.co.jp"
  name "Imaging Edge Desktop"
  desc "Sony camera companion app"
  homepage "https://imagingedge.sony.net/en/ie-desktop.html"

  pkg "IE_INST.pkg"

  uninstall pkgutil: "com.sony.ImagingEdgeVer.1.pkg"
end
