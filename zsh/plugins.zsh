# PLUGINS

plugins=(
  docker
  docker-compose
  extract
  fzf
  git
  history
  rails
  ruby
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $DOTFILES/zsh/plugins/syntax-highlighting.zsh

# Z dir jump
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# Map fzf to CRLT+P
bindkey '^P' fzf-file-widget
