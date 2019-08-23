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
~/.asdf/bin/asdf update

echo_info "Add asdf plugins..."
~/.asdf/bin/asdf plugin-add erlang
~/.asdf/bin/asdf plugin-add elixir
~/.asdf/bin/asdf plugin-add nodejs
~/.asdf/bin/asdf plugin-add ruby

echo_info "Update all plugins..."
~/.asdf/bin/asdf plugin-update --all

echo_info "asdf install erlang..."
~/.asdf/bin/asdf install erlang 21.1.1
~/.asdf/bin/asdf global erlang 21.1.1

echo_info "asdf install elixir..."
~/.asdf/bin/asdf install elixir 1.9.1
~/.asdf/bin/asdf global elixir 1.9.1

echo_info "asdf install nodejs..."
~/.asdf/plugins/nodejs/bin/import-release-team-keyring
~/.asdf/bin/asdf install nodejs 10.16.0
~/.asdf/bin/asdf global nodejs 10.16.0

echo_info "asdf install ruby..."
~/.asdf/bin/asdf install ruby 2.6.3
~/.asdf/bin/asdf global ruby 2.6.3

echo_done "asdf configuration!"
