#!/bin/bash

. packages.sh
. helpers.sh

# Update mirrors and packages
echo_info "Updating packages..."
_update

# Install packages in the official repositories
echo_info "Installing core packages..."
_install core

echo_info "Configure settings..."
_symlink

# Install packages in the AUR
# echo_info "Installing aur packages..."
# _install aur
