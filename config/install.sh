#!/bin/bash

. ../helpers.sh

echo_info "Applying custom settings..."

# I don't need it now
# echo_info "Disable IPv6"
# sudo sed -i -e 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="ipv6.disable=1"/g' /etc/default/grub
# sudo grub update

echo_done "Custom settings applied"
