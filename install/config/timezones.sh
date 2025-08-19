#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


if ! command -v tzupdate &>/dev/null; then
  omarchy-yay -S --noconfirm --needed tzupdate
  sudo tee /etc/sudoers.d/omarchy-tzupdate >/dev/null <<EOF
%wheel ALL=(root) NOPASSWD: /usr/bin/tzupdate, /usr/bin/timedatectl
EOF
  sudo chmod 0440 /etc/sudoers.d/omarchy-tzupdate
fi
