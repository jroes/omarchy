#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


omarchy-yay -S --noconfirm --needed ttf-font-awesome ttf-cascadia-mono-nerd ttf-ia-writer noto-fonts noto-fonts-emoji

if [ -z "$OMARCHY_BARE" ]; then
  omarchy-yay -S --noconfirm --needed ttf-jetbrains-mono noto-fonts-cjk noto-fonts-extra
fi
