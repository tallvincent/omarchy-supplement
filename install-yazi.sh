#!/bin/bash

echo "Installing yazi and required dependencies"

sudo pacman -S --noconfirm --needed yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick
