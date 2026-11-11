cask "desknames" do
  version "0.6.2"
  sha256 "98cb4bea7f0497f5d034dfbaa189ab3aabe799d00effc97d90088ef54e840882"

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
    DeskNames is an unnotarized preview. macOS may require first-launch approval
    in System Settings > Privacy & Security. See the README before installing.
    Window management requires Accessibility permission, which carries over
    between updates. Uninstall preserves settings; --zap removes them.
  EOS
end
