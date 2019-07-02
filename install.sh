#!/bin/bash

. distro.sh
. packages.sh
. helpers.sh

# Install packages in the official repositories
echo_info "Installing core packages..."
_install core

# Install Yay
echo_info "Installing yay..."
_install_yay

# Install packages in the AUR
echo_info "Installing aur packages..."
_install aur

_update system

_symlink
