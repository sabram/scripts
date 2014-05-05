#Script to add a space to your dock
#See http://css-tricks.com/snippets/html/add-spaces-to-dock-in-os-x/
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
killall Dock

