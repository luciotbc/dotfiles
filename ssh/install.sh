#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Symlink ~/.ssh/config"
mkdir "$HOME/.ssh"

ln -sfT "$HOME/.dotfiles/ssh/config" "$HOME/.ssh/config"

echo_done "Git configuration!"
