#!/bin/bash

echo "Syncing dotfiles"
rsync -aivP home/ ~/
