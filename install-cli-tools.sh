#!/bin/bash

echo "Installing ripgrep"

sudo pacman -S --noconfirm --needed ripgrep

echo "Installing stow, carapace-bin"

yay -S --noconfirm --needed stow carapace-bin
