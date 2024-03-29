#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Installing lscripts"

echo_info "Symlink .scripts..."
ln -sfT "$HOME/.dotfiles/lscripts/src" "$HOME/.lscripts"

ln -sfT "$HOME/.dotfiles/lscripts/src/centercurrentwindow.sh" "/usr/bin/centercurrentwindow"

echo_done "ZSH configuration!"
