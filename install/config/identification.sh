#!/bin/bash

# Refresh sudo timestamp to avoid repeated prompts
sudo -v


export OMARCHY_USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export OMARCHY_USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")
