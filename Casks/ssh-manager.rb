cask "ssh-manager" do
  version "1.0"
  sha256 "169d2e9d79f6420434034b280092535731ecf2fbc664a3503208446b4c607d78"

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
