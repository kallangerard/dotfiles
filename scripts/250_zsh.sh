#!/usr/bin/env bash

chsh -s /usr/local/bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/570158e/tools/install.sh)"

# Install Fonts

(
cd "$(mktemp -d)" && \
git clone https://github.com/powerline/fonts.git --depth=1 && \
cd fonts && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/powerline/fonts/92fd0d9fb1ebec6085a61d276e69cf2141c63394/install.sh)"
)


cp home/.zshrc ~/


