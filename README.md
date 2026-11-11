# DeskNames Homebrew tap

Project-maintained Homebrew cask for [DeskNames](https://github.com/Kipung/DeskNames), a native macOS utility for named desktops, visual pane layouts, and window arrangements.

```sh
brew tap Kipung/desknames
brew install --cask desknames
```

Apple Silicon only; macOS 14 or later. **This is an unnotarized preview**, not an official Homebrew/homebrew-cask listing. Review the [installation notes](https://github.com/Kipung/DeskNames#install) before installing. macOS may require first-launch approval, and window management requires Accessibility permission. No security protections are disabled by this cask.

To update:

```sh
brew update
brew upgrade --cask desknames
```

The app also provides optional signed Sparkle updates. Normal uninstall preserves preferences and layouts; `brew uninstall --zap --cask desknames` deliberately removes them.

Release URLs and SHA-256 hashes are generated from the packaged release artifact. Report application issues in the [DeskNames repository](https://github.com/Kipung/DeskNames/issues).
