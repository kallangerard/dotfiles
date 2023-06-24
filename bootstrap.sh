#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1

rsync -avh --no-perms home/ ~/
# source ~/.zshrc;

echo "Running Bootstrap Scripts"
for file in scripts/*.sh; do
  echo "Running ${file}"
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/570158e/tools/install.sh
