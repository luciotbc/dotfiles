#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Backup default terminal settings..."
mv "$HOME/.config/xfce4/terminal/terminalrc" "$HOME/.config/xfce4/terminal/terminalrc.bkp"
mv "$HOME/.config/xfce4/terminal/accels.scm" "$HOME/.config/xfce4/terminal/accels.scm.bkp"

echo_info "Symlink terminall settings..."

ln -sfT "$HOME/.dotfiles/xfce/termianl/terminalrc" "$HOME/.config/xfce4/terminal/terminalrc"
ln -sfT "$HOME/.dotfiles/xfce/termianl/accels.scm" "$HOME/.config/xfce4/terminal/accels.scm"

echo_info "Backup default terminal settings..."
mv "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml.bkp"

echo_info "Symlink terminall settings..."
ln -sfT "$HOME/.dotfiles/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"



echo_info "Symlink powerlevel10k..."
ln -sfT "$HOME/.dotfiles/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

echo_info "Symlink .zshrc..."
ln -sfT "$HOME/.dotfiles/zsh/zshrc" "$HOME/.zshrc"

echo_info "Changing shell..."
chsh -s $(which zsh)
sudo chsh -s $(which zsh)

echo_done "ZSH configuration!"
