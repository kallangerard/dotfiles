#!/bin/bash
echo "Attempting dotfiles install..."

# Always want to use ZSH as my default shell (e.g. for SSH)
sudo chsh -s /bin/zsh $(whoami)

# Install zsh addons
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install ohmyzsh

# wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install-ohmyzsh.sh

#Sync dotfiles
rsync -aivP home/ ~/
# Install prettier
#npm i --global prettier
# Install yarn
#npm i --global yarn

echo "Done installing dotfiles!"
