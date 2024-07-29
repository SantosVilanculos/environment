#!/usr/bin/bash

DIRECTORY="$(realpath $(dirname -- "$0"))"

ln -nsf "$DIRECTORY/.zshrc" "$HOME/.zshrc"

ln -nsf "$DIRECTORY/.gitconfig" "$HOME/.gitconfig"

ln -nsf "$DIRECTORY/.tmux.conf" "$HOME/.tmux.conf"

mkdir -p "$HOME/.config/Code/User"
ln -nsf "$DIRECTORY/.config/Code/User/settings.json" "$HOME/.config/Code/User/settings.json"

ln -nsf "$DIRECTORY/.config/alacritty" "$HOME/.config/alacritty"

ln -nsf "$DIRECTORY/.config/i3" "$HOME/.config/i3"
ln -nsf "$DIRECTORY/.config/i3status" "$HOME/.config/i3status"

ln -nsf "$DIRECTORY/.bin" "$HOME/.bin"
