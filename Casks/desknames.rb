cask "desknames" do
  version "0.6.1"
  sha256 "a6614a6256293563aa95c36b4965111b4418ce115728e091a34d507d67eba96f"

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
    Window management requires Accessibility permission. An ad-hoc-signed update
    may require renewing that approval. Uninstall preserves settings; --zap removes them.
  EOS
end
