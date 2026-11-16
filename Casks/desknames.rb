cask "desknames" do
  version "0.8.0"
  sha256 "30a1003f00be211a73075d6aa4cd5131fbca6b2c5e9947f6eede8b3d54888ca2"

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
