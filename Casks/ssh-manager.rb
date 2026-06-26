cask "ssh-manager" do
  version "1.0.1"
  sha256 "501f5ae842777e1d96808938ab521ec779cb75021abc4df5e746f0ce2dd07543"

  url "https://github.com/aidevelopmentsnz/ssh-manager/releases/download/v#{version}/SSH-Manager-#{version}.dmg"
  name "SSH Manager"
  desc "Dark-themed SSH connection manager that opens connections in Terminal"
  homepage "https://github.com/aidevelopmentsnz/ssh-manager"

  app "SSH Manager.app"

  zap trash: [
    "~/.config/ssh-manager",
  ]

  caveats <<~EOS
    SSH Manager is not signed or notarized. If macOS blocks it on first launch,
    right-click the app in Applications and choose Open, or reinstall with:
      brew install --cask --no-quarantine aidevelopmentsnz/tap/ssh-manager
  EOS
end
