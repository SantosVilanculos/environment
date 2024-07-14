#!/usr/bin/bash

DIRECTORY="$(realpath $(dirname -- "$0"))"

ln -sf "$DIRECTORY/.zshrc" "$HOME/.zshrc"

ln -sf "$DIRECTORY/.gitconfig" "$HOME/.gitconfig"

ln -sf "$DIRECTORY/.tmux.conf" "$HOME/.tmux.conf"

mkdir -p "$HOME/.config/Code/User"
ln -sf "$DIRECTORY/.config/Code/User/settings.json" "$HOME/.config/Code/User/settings.json"

ln -sf "$DIRECTORY/.config/alacritty" "$HOME/.config/alacritty"

ln -sf "$DIRECTORY/.config/i3" "$HOME/.config/i3"
ln -sf "$DIRECTORY/.config/i3status" "$HOME/.config/i3status"

ln -sf "$DIRECTORY/bin" "$HOME/bin"
