#!/bin/bash

# NOTE: The following keybinds override needs to be manually copied over to 
#       ~/.config/walker/config.toml for Ctrl + n / p to be used for navigating menus
# 
# [keybinds]
# quick_activate = []
# next = ["Down", "ctrl n"]
# previous = ["Up", "ctrl p"]
#
# [providers.actions]
# desktopapplications = [
#   { action = "pin", bind = "ctrl b", after = "AsyncReload" },
#   { action = "unpin", bind = "ctrl u", after = "AsyncReload" },
#   { action = "pinup", bind = "ctrl Up", after = "AsyncReload" },
#   { action = "pindown", bind = "ctrl Down", after = "AsyncReload" }
# ]

cp -f walker-websearch.toml ~/.config/elephant/websearch.toml

omarchy-restart-walker &

echo "Walker overrides setup complete!"
