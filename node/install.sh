#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Add NodeJS keys..."
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

echo_info "Symling .default-npm-packages..."
ln -sfT "$HOME/.dotfiles/node/default-npm-packages" "$HOME/.default-npm-packages"

echo_done "NodeJS configuration!"
