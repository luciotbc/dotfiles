
#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Symling terminator config..."
mkdir -p ~/.config/terminator
ln -sfT ~/.dotfiles/terminator/config ~/.config/terminator/config

echo_done "Terminator configuration!"
