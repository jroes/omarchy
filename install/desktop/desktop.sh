#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


omarchy-yay -S --noconfirm --needed \
  brightnessctl playerctl pamixer wiremix wireplumber \
  fcitx5 fcitx5-gtk fcitx5-qt wl-clip-persist \
  nautilus sushi ffmpegthumbnailer gvfs-mtp \
  slurp satty \
  mpv evince imv \
  chromium

# Add screen recorder based on GPU
if lspci | grep -qi 'nvidia'; then
  omarchy-yay -S --noconfirm --needed wf-recorder
else
  omarchy-yay -S --noconfirm --needed wl-screenrec
fi
