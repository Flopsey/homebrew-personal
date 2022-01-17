cask "iograph" do
  version "1.0.3"
  sha256 "9f2755eda8d29113d14832771bb2bd59672e4a0cc5fe81e25a9d73f47f2015d4"

  url "https://github.com/anatolyzenkov/IOGraph/releases/download/v#{version}/IOGraph_v#{version.dots_to_underscores}.dmg", verified: "https://github.com/anatolyzenkov/IOGraph/"
  name "IOGraph"
  desc "Mouse movement visualizations"
  homepage "https://iographica.com/"

  app "IOGraph.app"
end
