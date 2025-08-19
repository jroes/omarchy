#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


if [[ ! -f /etc/modprobe.d/hid_apple.conf ]]; then
  echo "options hid_apple fnmode=2" | sudo tee /etc/modprobe.d/hid_apple.conf

  # Rely on install/login.sh to do the rebuild
  # sudo mkinitcpio -P
fi
