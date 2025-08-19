#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


# Install bluetooth controls
omarchy-yay -S --noconfirm --needed blueberry

# Turn on bluetooth by default
sudo systemctl enable --now bluetooth.service
