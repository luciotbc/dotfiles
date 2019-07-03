#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Cloning asdf..."
git clone https://github.com/asdf-vm/asdf.git "$HOME/.asdf"

SAVED_DIR=$PWD

cd "$HOME/.asdf" || exit

git checkout "$(git describe --abbrev=0 --tags)"

cd "$SAVED_DIR" || exit

echo_info "Symling .asdfrc..."
ln -sfT "$HOME/.dotfiles/asdf/asdfrc" "$HOME/.asdfrc"

echo_info "Symling .tool-versions..."
ln -sfT "$HOME/.dotfiles/asdf/tool-versions" "$HOME/.tool-versions"

echo_info "Update asdf itself..."
asdf update

echo_info "Add asdf plugins..."
asdf plugin-add elixir
asdf plugin-add nodejs
asdf plugin-add ruby

echo_info "Update all plugins..."
asdf plugin-update --all

echo_done "asdf configuration!"
