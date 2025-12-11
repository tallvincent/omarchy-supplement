#!/bin/bash

# Check if asdf is installed
if ! command -v asdf &>/dev/null; then
    echo "asdf is not installed. Please run ./install-dev-tools.sh first."
    exit 1
fi

# Install erlang plugin for asdf if not already installed
if ! asdf plugin list | grep -q erlang; then
    asdf plugin add erlang
fi

# Install elixir plugin for asdf if not already installed
if ! asdf plugin list | grep -q elixir; then
    asdf plugin add elixir
fi

# Install latest stable erlang if no erlang version is installed
if ! asdf list erlang &>/dev/null || [ -z "$(asdf list erlang 2>/dev/null)" ]; then
    echo "Installing erlang..."
    asdf install erlang 28.2
    asdf set -u erlang 28.2
fi

# Install latest stable elixir if no elixir version is installed
if ! asdf list elixir &>/dev/null || [ -z "$(asdf list elixir 2>/dev/null)" ]; then
    echo "Installing Elixir..."
    asdf install elixir 1.19.4-otp-28
    asdf set -u elixir 1.19.4-otp-28
fi

echo "Elixir and erlang installation complete!"
