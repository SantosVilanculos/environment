#!/usr/bin/bash

cd "$(dirname -- "$0")"

CURRENT_DIRECTORY=$(pwd)

ln -sfb "$CURRENT_DIRECTORY/.zshrc" "$HOME/.zshrc"

ln -sfb "$CURRENT_DIRECTORY/.gitconfig" "$HOME/.gitconfig"

mkdir -p "$HOME/.config/tmux"
ln -sfb "$CURRENT_DIRECTORY/.config/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"

mkdir -p "$HOME/.config/Code/User"
ln -sfb "$CURRENT_DIRECTORY/.config/Code/User/settings.json" "$HOME/.config/Code/User/settings.json"

mkdir -p "$HOME/.config/alacritty/color_scheme" "$HOME/.config/alacritty/font_face"
ln -sfb "$CURRENT_DIRECTORY/.config/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
ln -sfb "$CURRENT_DIRECTORY/.config/alacritty/color_scheme/monokai_pro.toml" "$HOME/.config/alacritty/color_scheme/monokai_pro.toml"
ln -sfb "$CURRENT_DIRECTORY/.config/alacritty/font_face/jetbrains_mono.toml" "$HOME/.config/alacritty/font_face/jetbrains_mono.toml"

mkdir -p "$HOME/.config/i3" "$HOME/.config/i3status"
ln -sfb "$CURRENT_DIRECTORY/.config/i3/config" "$HOME/.config/i3/config"
ln -sfb "$CURRENT_DIRECTORY/.config/i3status/config" "$HOME/.config/i3status/config"

sudo ln -sf "$CURRENT_DIRECTORY/bin/favicon.sh" "/usr/local/bin/favicon"
sudo chmod +x "/usr/local/bin/favicon"

cd -
