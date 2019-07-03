# PLUGINS

plugins=(
  git
  docker
  docker-compose
  extract
  git
  history
  ruby
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $DOTFILES/zsh/plugins/syntax-highlighting.zsh
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

### zplug #####################################################################

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

# Plugins List

# Install packages that have not been installed yet
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo
    zplug install
  else
    echo
  fi
fi

zplug load
