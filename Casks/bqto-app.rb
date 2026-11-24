cask "bqto-app" do
  version "0.2.0"
  sha256 "78f7b1f24a54128d90884b9968b56fc268f553284eab2d7ffef27a6b25dfec00"
  url "https://github.com/pilef-co/bqto-pro-releases/releases/download/app-v#{version}/Bqto.app.zip"
  name "bqto"
  desc "Menu bar app for bqto Pro"
  homepage "https://bqto.dev/"
  depends_on macos: ">= :sonoma"
  app "Bqto.app"
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Bqto.app"]
  end
end
