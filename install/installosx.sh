#!/usr/bin/env sh
# Some stuff borrowed from https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# -----------------------------------------------------------------------------
# GLOBAL STUFF
# -----------------------------------------------------------------------------

# echo "Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# echo "Expand save dialog by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# echo "Disable press-and-hold for keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# echo "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 0

# echo "Set a shorter Delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# echo "Setting scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"

# Disable “natural” scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable smart stuff (quotes and dashes) as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Set highlight color
defaults write NSGlobalDomain AppleHighlightColor -string "0.752941 0.964706 0.678431"

# Set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Faster mousing
defaults write -g com.apple.mouse.scaling -float 6

# Enable Fkeys
defaults write -g com.apple.keyboard.fnState -bool true

# Dark toolbar
defaults write -g 'AppleInterfaceStyle' 'Dark'

# -----------------------------------------------------------------------------
# Misc                                                                        #
# -----------------------------------------------------------------------------

# Disable sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Set Help Viewer windows to non-floating mode
defaults write com.apple.helpviewer DevMode -bool true

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# -----------------------------------------------------------------------------
# FINDER STUFF
# -----------------------------------------------------------------------------

# echo "Yep show me the ~/Library folder in Finder"
chflags nohidden ~/Library

# echo "No frills UI stuff"
defaults write com.apple.finder AnimateInfoPanes -bool false
defaults write com.apple.finder AnimateWindowZoom -bool false

# echo "Don't show icons on the desktop"
defaults write com.apple.finder CreateDesktop -bool false

# echo "Use current directory as default search scope in Finder"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

# echo "Don't warn on Trash empty"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Set Desktop as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# -----------------------------------------------------------------------------
# Universal Access                                                            #
# -----------------------------------------------------------------------------
defaults write com.apple.universalaccess closeViewDesiredZoomFactor -float 2.15
defaults write com.apple.universalaccess closeViewFarPoint -float 1.921822
defaults write com.apple.universalaccess closeViewHotkeysEnabled -bool true
defaults write com.apple.universalaccess closeViewNearPoint -int 4
defaults write com.apple.universalaccess closeViewPanningMode -int 1
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess closeViewShowPreview -bool false
defaults write com.apple.universalaccess closeViewSmoothImages -bool true
defaults write com.apple.universalaccess closeViewZoomFactor -int 1
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool false

# Disable transparency in the menu bar and elsewhere
defaults write com.apple.universalaccess reduceTransparency -bool true

# -----------------------------------------------------------------------------
# Screen saver and screen capture                                             #
# -----------------------------------------------------------------------------

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the desktop with format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture location -string "${HOME}/Desktop"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool false


# -----------------------------------------------------------------------------
# Spaces                                                                      #
# -----------------------------------------------------------------------------

# Disable multiple menu bars on multiple screens
defaults write com.apple.spaces  spans-displays -bool true

# -----------------------------------------------------------------------------
# Safari & WebKit                                                             #
# -----------------------------------------------------------------------------

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Press Tab to highlight each item on a web page
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

# Show the full URL in the address bar (note: this still hides the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Allow hitting the Backspace key to go to the previous page in history
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Hide Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# -----------------------------------------------------------------------------
# Google Chrome & Google Chrome Canary                                        #
# -----------------------------------------------------------------------------

# Allow installing user scripts via GitHub Gist or Userscripts.org
defaults write com.google.Chrome ExtensionInstallSources -array "https://gist.githubusercontent.com/" "http://userscripts.org/*"
defaults write com.google.Chrome.canary ExtensionInstallSources -array "https://gist.githubusercontent.com/" "http://userscripts.org/*"

# Disable the all too sensitive backswipe on trackpads
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false

# Disable the all too sensitive backswipe on Magic Mouse
defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableMouseSwipeNavigateWithScrolls -bool false

# Use the system-native print preview dialog
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true

# Expand the print dialog by default
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

# -----------------------------------------------------------------------------
# Messages                                                                    #
# -----------------------------------------------------------------------------

# Disable smart quotes as it’s annoying for messages that contain code
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

# Disable annoying spelling stuff
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticSpellingCorrectionEnabled" -bool false

# -----------------------------------------------------------------------------
# FileMaker Pro                                                               #
# -----------------------------------------------------------------------------

defaults write com.filemaker.client.advanced12 WebKitDeveloperExtras -bool true

# -----------------------------------------------------------------------------
# Clean up                                                                    #
# -----------------------------------------------------------------------------
#
echo "Killing affected applications...\n"

for app in "Finder" "Google Chrome" "Google Chrome Canary" "Messages" \
  "Safari" "SystemUIServer" "Terminal"; do
  killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
