#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


omarchy-yay -S --noconfirm --needed \
  hyprland hyprshot hyprpicker hyprlock hypridle hyprsunset polkit-gnome hyprland-qtutils \
  walker-bin libqalculate waybar mako swaybg swayosd \
  xdg-desktop-portal-hyprland xdg-desktop-portal-gtk
