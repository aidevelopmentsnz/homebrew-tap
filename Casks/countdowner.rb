cask "countdowner" do
  version "1.0.1"
  sha256 "186867fcc331e99fda7faa2069f2c2a32d3db1b27e9ae8383e06cf6cc0a101df"

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
