#!/usr/bin/env bash

mkdir -p $HOME/.oh-my-zsh/completions

if [ -x "$(command -v git-town)" ]; then
    echo "Installing git-town completions"
    git-town completions zsh > $HOME/.oh-my-zsh/completions/_git-town
fi

if [ -x "$(command -v kubectl)" ]; then
    echo "Installing kubectl completions"
    kubectl completion zsh > $HOME/.oh-my-zsh/completions/_kubectl
fi

# If jira is installed, add completions
if [ -x "$(command -v jira)" ]; then
    echo "Installing jira completions"
  jira completion zsh > $HOME/.oh-my-zsh/completions/_jira
fi

if [ -x "$(command -v skaffold)" ]; then
    echo "Installing skaffold completions"
  skaffold completion zsh > $HOME/.oh-my-zsh/completions/_skaffold
fi