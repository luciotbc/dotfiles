#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Symling .default-gems..."
ln -sfT "$HOME/.dotfiles/ruby/default-gems" "$HOME/.default-gems"

echo_info "Symling .irbrc..."
ln -sfT "$HOME/.dotfiles/ruby/irbrc" "$HOME/.irbrc"

echo_info "Symling .rubocop..."
ln -sfT "$HOME/.dotfiles/ruby/rubocop.yml" "$HOME/.rubocop.yml"

echo_done "Ruby configuration!"