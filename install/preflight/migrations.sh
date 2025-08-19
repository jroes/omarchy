#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


omarchy_migrations_state_path=~/.local/state/omarchy/migrations
mkdir -p $omarchy_migrations_state_path

for file in ~/.local/share/omarchy/migrations/*.sh; do
  touch "$omarchy_migrations_state_path/$(basename "$file")"
done
