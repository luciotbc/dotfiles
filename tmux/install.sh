
#!/bin/bash

# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Symling Tmux config..."
git clone --depth=1 https://github.com/gpakosz/.tmux.git "$HOME/.tmux"

ln -sfT "$HOME/.tmux/.tmux.conf" "$HOME/.tmux.conf"
ln -sfT "$HOME/.dotfiles/tmux/tmux.conf.local" "$HOME/.tmux.conf.local"

echo_done "Tmux configuration!"
