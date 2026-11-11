cask "desknames" do
  version "0.6.0"
  sha256 "4d999cfb5b431c136493cfb84d2aac46219faba93e2d64a3f04c6a67696fadb9"

  url "https://github.com/Kipung/DeskNames/releases/download/v#{version}/DeskNames-#{version}-arm64.zip"
  name "DeskNames"
  desc "Named desktops, visual pane layouts, and window arrangement"
  homepage "https://github.com/Kipung/DeskNames"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

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
