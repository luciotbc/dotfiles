# ALIASES
alias c="clear"
alias v="nvim"
alias vim="nvim"
alias :q="exit"
alias xx="exit"
alias cc="code ."
alias count="find . -type f | wc -l"

# System
alias sysupdate="sudo pacman -Syu --needed --noconfirm && yay -Syu --needed --noconfirm && yay -Scc --noconfirm"
alias edot="code ~/.dotfiles"
alias cddot="cd ~/.dotfiles"
alias wifipass="sudo grep -r '^psk=' /etc/NetworkManager/system-connections"

# Local postgresql
alias pgstart="sudo systemctl start postgresql.service"
alias pgstop="sudo systemctl enable postgresql.service"
alias pgenable="sudo systemctl enable postgresql.service"
alias pgdisable="sudo systemctl disable postgresql.service"
alias pgstatus="sudo systemctl status postgresql.service"

# Docker
alias dcupd="docker-compose up -d"
alias ddc="docker rm -f $(docker ps -a -q)"
alias ddv="docker volume rm $(docker volume ls -q)"
alias dcp="docker-compose pause"
alias dcu="docker-compose unpause"
alias dcrr="docker-compose restart"
alias g2m="sudo chown -R lucio:lucio"

# Git
alias glogp="git log --oneline --pretty='%C(normal bold)%h%Creset - %Cblue%cn%Creset - %ad - %C(normal dim)%s%Creset' --date=short"

# My scripts
alias rh="~/.lscripts/reconnect-headset.sh"
