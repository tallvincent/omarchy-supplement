#!/bin/bash

echo "Installing github-cli"

sudo pacman -S --noconfirm --needed github-cli atac

echo "Installing asdf-vm"

yay -S --noconfirm --needed asdf-vm
