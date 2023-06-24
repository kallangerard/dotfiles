#!/usr/bin/env bash
brew upgrade
brew bundle --file Brewfile
brew cleanup


chsh -s /usr/local/bin/zsh
