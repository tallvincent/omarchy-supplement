#!/bin/bash

echo "Installing zen-browser-bin"

yay -S --noconfirm --needed zen-browser-bin

echo "Setting zen as default web browser"

xdg-settings set default-web-browser zen.desktop
