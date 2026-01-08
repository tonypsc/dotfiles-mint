#!/usr/bin/env bash

DOTFILES="$HOME/dotfiles"

echo "📥 Getting configs into dotfiles..."

# Alacritty (handle both .toml and .yml)
mkdir -p "$DOTFILES/alacritty"
[ -f ~/.config/alacritty/alacritty.toml ] && cp -f ~/.config/alacritty/alacritty.toml "$DOTFILES/alacritty/"
[ -f ~/.config/alacritty/alacritty.yml ] && cp -f ~/.config/alacritty/alacritty.yml "$DOTFILES/alacritty/"

# tmux
mkdir -p "$DOTFILES/tmux"
[ -f ~/.tmux.conf ] && cp -f ~/.tmux.conf "$DOTFILES/tmux/"

# zsh
mkdir -p "$DOTFILES/zsh"
[ -f ~/.zshrc ] && cp -f ~/.zshrc "$DOTFILES/zsh/"

# i3
mkdir -p "$DOTFILES/i3"
[ -f ~/.config/i3/config ] && cp -f ~/.config/i3/config "$DOTFILES/i3/"

# i3blocks
mkdir -p "$DOTFILES/i3blocks"
[ -f ~/.config/i3blocks/config ] && cp -f ~/.config/i3blocks/config "$DOTFILES/i3blocks/"

# rofi
mkdir -p "$DOTFILES/rofi"
[ -f ~/.config/rofi/config.rasi ] && cp -f ~/.config/rofi/config.rasi "$DOTFILES/rofi/"

# VS Code (only selected files)
mkdir -p "$DOTFILES/vscode"
[ -f ~/.config/Code/User/settings.json ] && cp -f ~/.config/Code/User/settings.json "$DOTFILES/vscode/"
[ -f ~/.config/Code/User/keybindings.json ] && cp -f ~/.config/Code/User/keybindings.json "$DOTFILES/vscode/"

# LazyVim (entire config)
if [ -d ~/.config/nvim ]; then
  mkdir -p "$DOTFILES/nvim"
  rsync -a --delete \
    --exclude lazy/ \
    --exclude state/ \
    --exclude shada/ \
    ~/.config/nvim/ "$DOTFILES/nvim/"
fi

echo "✅ Done."
