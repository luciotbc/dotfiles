#!/bin/bash

# shellcheck source=distro.sh
. ../distro.sh
# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Cloning Yay..."
git clone https://aur.archlinux.org/yay.git  ~/.yay

SAVED_DIR=$PWD

cd ~/.yay || exit

git checkout "$(git describe --abbrev=0 --tags)"

echo_info "Installing Yay..."

makepkg -si

echo_done "Yay configuration!"
