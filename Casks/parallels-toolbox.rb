cask "parallels-toolbox" do
  version "4.0.0-3231"
  sha256 "5bdfb4265eb1d58ebc4415cf50fa39ae68b0cedba63a81646a40335a8edcda25"

  url "https://download.parallels.com/toolbox/v#{version.major}/#{version}/ParallelsToolbox-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.parallels.com/directdownload/toolbox/"
  name "Parallels Toolbox"
  homepage "https://www.parallels.com/products/toolbox/"

  installer manual: "Install Parallels Toolbox.app"

  uninstall delete: "/Applications/Parallels Toolbox.app",
            signal: ["TERM", "com.parallels.toolbox"]

  zap trash: [
    "~/Library/Application Support/com.parallels.toolbox",
    "~/Library/Group Containers/*.com.parallels.toolbox",
    "~/Library/Logs/prl.toolbox.ceplog.log",
    "~/Library/Logs/ParallelsToolbox",
    "~/Library/Logs/prl.toolbox.ceplog.xml",
    "~/Library/Preferences/com.parallels.toolbox.plist",
  ]
end
