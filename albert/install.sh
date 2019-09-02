
#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Symling albert.conf..."
mkdir -p ~/.config/albert
ln -sfT ~/.dotfiles/albert/albert.conf ~/.config/albert/albert.conf

echo_info "Symling albert engines.json..."
mkdir -p ~/.config/albert/org.albert.extension.websearch
ln -sfT ~/.dotfiles/albert/engines.json ~/.config/albert/org.albert.extension.websearch/engines.json

echo_done "Albert configuration!"
