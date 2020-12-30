#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/loket/oh-my-zsh/feature/batch-mode/tools/install.sh)" -s --batch || {
  echo "Could not install Oh My Zsh" >/dev/stderr
  exit 1
}

echo_info "Installing zsh-autosuggestions..."
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"

echo_info "Installing zsh-syntax-highlighting..."
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"

echo_info "Installing powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/themes/powerlevel10k"

echo_info "Symlink powerlevel10k..."
ln -sfT "$HOME/.dotfiles/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

echo_info "Symlink .zshrc..."
ln -sfT "$HOME/.dotfiles/zsh/zshrc" "$HOME/.zshrc"

echo_info "Changing shell..."
chsh -s $(which zsh)
sudo chsh -s $(which zsh)

echo_done "ZSH configuration!"
