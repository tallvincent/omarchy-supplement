#!/bin/bash

ORIGINAL_DIR=$(pwd)
REPO_URL="https://github.com/tallvincent/dotfiles"
REPO_NAME="dotfiles"

is_stow_installed() {
  pacman -Qi "stow" &> /dev/null
}

if ! is_stow_installed; then
  echo "Install stow first"
  exit 1
fi

cd ~

# Check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "Repository '$REPO_NAME' already exists. Skipping clone"
else
  git clone "$REPO_URL"
fi

# Check if the clone was successful
if [ $? -eq 0 ]; then
  echo "Removing old configs"
  rm -rf ~/.zshrc
  rm -rf ~/.config/nvim ~/.local/share/nvim/ ~/.cache/nvim/
  rm -rf ~/.config/starship.toml
  # rm -rf ~/.config/wezterm
  # rm -rf ~/.config/nushell
  # rm -rf ~/.config/yazi

  cd "$REPO_NAME"
  stow zshrc
  stow wezterm
  stow nushell
  stow starship
  stow nvim
  stow yazi
  cd ~/supplement
else
  echo "Failed to clone the repository."
  cd ~/supplement
  exit 1
fi
