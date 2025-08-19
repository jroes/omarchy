#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


omarchy-yay -S --noconfirm --needed \
  cargo clang llvm mise \
  imagemagick \
  mariadb-libs postgresql-libs \
  github-cli \
  lazygit lazydocker-bin
