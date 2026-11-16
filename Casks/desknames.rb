cask "desknames" do
  version "0.7.0"
  sha256 "5f3d425ec27a3e0ed46aeb189c6298cec7e78697b5fba384359775a57cc0d7ad"

  url "https://github.com/Kipung/DeskNames/releases/download/v#{version}/DeskNames-#{version}-arm64.zip"
  name "DeskNames"
  desc "Named desktops, visual pane layouts, and window arrangement"
  homepage "https://github.com/Kipung/DeskNames"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DeskNames.app"

  zap trash: [
    "~/Library/Application Support/DeskNames",
    "~/Library/Caches/local.desknames.app",
    "~/Library/Preferences/local.desknames.app.plist",
  ]

  caveats <<~EOS
    DeskNames is an unnotarized preview; Apple has not checked it through notarization.
    Open DeskNames from Applications once. If macOS blocks it and you trust this
    download, use System Settings > Privacy & Security > Open Anyway, then confirm.
    Homebrew does not bypass this approval. See https://github.com/Kipung/DeskNames#install
    The welcome panel guides you through Accessibility, optional shortcuts and panes.
    Accessibility is detected without relaunching. If approval is stale after an
    update, remove the old entry and add the current app in Accessibility settings.
    Uninstall preserves settings; --zap removes them.
  EOS
end
