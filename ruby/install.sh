#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Symling .default-gems..."
ln -sfT "$HOME/.dotfiles/ruby/default-gems" "$HOME/.default-gems"

echo_info "Symling .irbrc..."
ln -sfT "$HOME/.dotfiles/ruby/irbrc" "$HOME/.irbrc"

echo_done "Ruby configuration!"
