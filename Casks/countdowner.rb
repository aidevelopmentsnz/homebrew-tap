cask "countdowner" do
  version "1.0"
  sha256 "a7db19a516de4b9af48423a5ece5d21bfb3cf2807f2fa1096b9dc2252d0b7929"

  url "https://github.com/aidevelopmentsnz/countdowner/releases/download/v#{version}/Countdowner-#{version}.dmg"
  name "Countdowner"
  desc "Dark, timezone-aware countdown app with a menu-bar day counter"
  homepage "https://github.com/aidevelopmentsnz/countdowner"

  app "Countdowner.app"

  zap trash: [
    "~/.config/countdowner",
  ]

  caveats <<~EOS
    Countdowner is not signed or notarized. If macOS blocks it on first launch,
    right-click the app in Applications and choose Open, or reinstall with:
      brew install --cask --no-quarantine aidevelopmentsnz/tap/countdowner
  EOS
end
