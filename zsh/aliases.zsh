# ALIASES
alias :q="exit"
alias c="clear"
alias cc="code ."
alias count="find . -type f | wc -l"
alias oo="open ."
alias v="nvim"
alias vim="nvim"
alias xx="exit"
alias daws="export AWS_PROFILE=default"
alias awsci="export AWS_PROFILE=ci"
alias awss3="export AWS_PROFILE=s3"
alias awsxav="export AWS_PROFILE=xavier"

# System
alias sysupdate="sudo pacman -Syu --needed --noconfirm && yay -Syu --needed --noconfirm" # removi a limpeza de cache
# alias sysupdate="sudo pacman -Syu --needed --noconfirm && yay -Syu --needed --noconfirm && yay -Scc --noconfirm"
alias edot="code ~/.dotfiles"
alias cddot="cd ~/.dotfiles"
alias wifipass="sudo grep -r '^psk=' /etc/NetworkManager/system-connections"
alias fixwifi="sudo systemctl restart dhcpcd NetworkManager systemd-resolved nscd" #dnsmasq
alias flush="sudo systemd-resolve --flush-caches && systemd-resolve --statistics"
alias pg="ping google.com"
alias ncb="nordvpn c Brazil"
alias ncu="nordvpn c United_States"
alias ns="nordvpn status"
alias nd="nordvpn d"

# Image Convert
alias heic2jpeg="ls *.(heic|HEIC) -1 | sed -e 's/\.HEIC$//' | xargs -I {} convert {}.HEIC {}.jpeg"
alias heic2png="ls *.(heic|HEIC) -1 | sed -e 's/\.HEIC$//' | xargs -I {} convert {}.HEIC {}.png"
alias jpeg2pdf="ls *.jpeg -1 | sed -e 's/\.jpeg$//' | xargs -I {} convert {}.jpeg {}.pdf"
alias png2pdf="ls *.png -1 | sed -e 's/\.png$//' | xargs -I {} convert {}.png {}.pdf"

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
alias g2m="sudo chown -R lc:lc"

# Dip + Ruby
alias drs="dip rspec"
alias drt="dip rails test"

# Git
alias glogp="git log --oneline --pretty='%C(normal bold)%h%Creset - %Cblue%cn%Creset - %ad - %C(normal dim)%s%Creset' --date=short"
alias gcsmg="git commit -m"
alias gcmg='git commit -m'
alias gcstg="git checkout staging"
# My scripts
alias rh="~/.lscripts/reconnect-headset.sh"
