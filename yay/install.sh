#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Install yay..."

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

echo_done "Yay configuration!"
