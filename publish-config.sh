#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles"

echo "📤 Publishing configs from dotfiles..."

# Alacritty (handle both .toml and .yml)
mkdir -p ~/.config/alacritty
[ -f "$DOTFILES/alacritty/alacritty.toml" ] && cp -f "$DOTFILES/alacritty/alacritty.toml" ~/.config/alacritty/
[ -f "$DOTFILES/alacritty/alacritty.yml" ] && cp -f "$DOTFILES/alacritty/alacritty.yml" ~/.config/alacritty/

# tmux
[ -f "$DOTFILES/tmux/.tmux.conf" ] && cp -f "$DOTFILES/tmux/.tmux.conf" ~/

# zsh
[ -f "$DOTFILES/zsh/.zshrc" ] && cp -f "$DOTFILES/zsh/.zshrc" ~/

# i3
mkdir -p ~/.config/i3
[ -f "$DOTFILES/i3/config" ] && cp -f "$DOTFILES/i3/config" ~/.config/i3/
[ -f "$DOTFILES/i3/i3script.sh" ] && cp -f "$DOTFILES/i3/i3script.sh" ~/.config/i3/

# i3blocks
mkdir -p ~/.config/i3blocks
[ -f "$DOTFILES/i3blocks/config" ] && cp -f "$DOTFILES/i3blocks/config" ~/.config/i3blocks/
[ -f "$DOTFILES/i3blocks/kb-layout.sh" ] && cp -f "$DOTFILES/i3blocks/kb-layout.sh" ~/.config/i3blocks/

# rofi
mkdir -p ~/.config/rofi
[ -f "$DOTFILES/rofi/config.rasi" ] && cp -f "$DOTFILES/rofi/config.rasi" ~/.config/rofi/

# VS Code
mkdir -p ~/.config/Code/User
[ -f "$DOTFILES/vscode/settings.json" ] && cp -f "$DOTFILES/vscode/settings.json" ~/.config/Code/User/
[ -f "$DOTFILES/vscode/keybindings.json" ] && cp -f "$DOTFILES/vscode/keybindings.json" ~/.config/Code/User/

# LazyVim (entire config)
if [ -d "$DOTFILES/nvim" ]; then
  mkdir -p ~/.config/nvim
  rsync -a --delete \
    --exclude lazy/ \
    --exclude state/ \
    --exclude shada/ \
    "$DOTFILES/nvim/" ~/.config/nvim/
fi

echo "✅ Done."
