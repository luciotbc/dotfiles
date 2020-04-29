# ALIASES
alias c="clear"
alias v="nvim"
alias vim="nvim"
alias :q="exit"

# System
alias sysupdate="sudo pacman -Syu --needed --noconfirm && yay -Syu --needed --noconfirm && yay -Scc --noconfirm"

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
alias wrr="docker-compose run web bundle exec"
alias wr="docker-compose run web"
alias g2m="sudo chown -R lucio:lucio"
# alias da="docker attach $(docker-compose ps -q web)"

# Git
alias glogp="git log --oneline --pretty='%C(normal bold)%h%Creset - %Cblue%cn%Creset - %ad - %C(normal dim)%s%Creset' --date=short"

#SRO
alias botb="wine ~/.wine/drive_c/sro/bucktbc/sbot/SBotP_1.0.38.exe"
alias srob="wine ~/.wine/drive_c/sro/bucktbc/Silkroad.exe"
alias botl="wine ~/.wine/drive_c/sro/lucktbc/sbot/SBotP.exe"
alias srol="wine ~/.wine/drive_c/sro/lucktbc/Silkroad.exe"
