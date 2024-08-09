#!/usr/bin/env bash

echo "Syncing dotfiles"
rsync -avh --no-perms home/ ~/

./install-completions.zsh