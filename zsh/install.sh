#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Installing oh-my-zsh..."
curl -Lo install.sh https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh --unattended
#rm install.sh

echo_info "Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"

echo_info "Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"

echo_info "Installing powerlevel10k..."
git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/themes/powerlevel10k"

echo_info "Symlink .zshrc..."
ln -sfT "$HOME/.dotfiles/zsh/zshrc" "$HOME/.zshrc"

echo_info "Changing shell..."
#sudo chsh -s $(which zsh)   

echo_done "ZSH configuration!"
