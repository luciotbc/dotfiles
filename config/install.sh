#!/bin/bash

. ../helpers.sh

echo_info "Applying custom settings..."

# echo_info "Disable IPv6"
# sudo sed -i -e 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="ipv6.disable=1"/g' /etc/default/grub
# sudo grub update

# Change default fonts on Gnome to support emoji
# sudo cp ~/.dotfiles/config/fonts/75-noto-color-emoji.conf /etc/fonts/conf.avail/
# sudo ln -sf /etc/fonts/conf.avail/75-noto-color-emoji.conf /etc/fonts/conf.d/

echo_done "Custom settings applied"
