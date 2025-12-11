#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "oh-my-zsh is not installed. Installing now..."

  # Ensure zsh is installed
  if ! command -v zsh &>/dev/null; then
    echo "zsh is not installed. Installing now..."
    yay -S --noconfirm --needed zsh
  fi

  # Install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "oh-my-zsh is already installed"
  yay -S --noconfirm --needed zsh-vi-mode
fi
