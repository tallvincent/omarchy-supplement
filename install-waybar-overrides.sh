#!/bin/bash

# Path to your Waybar configuration file
CONFIG_FILE="$HOME/.config/waybar/config.jsonc"

# Check if the file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file not found: $CONFIG_FILE"
    exit 1
fi

cp -R waybar/ ~/.config/

omarchy-restart-waybar

echo "Waybar overrides setup complete!"
