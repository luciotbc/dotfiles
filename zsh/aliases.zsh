# Alias
alias :q="exit"
alias c="clear"
alias cc="code ."
alias count="find . -type f | wc -l"
alias oo="open ."
alias v="nvim"
alias vim="nvim"
alias xx="exit"
#alias daws="export AWS_PROFILE=default"

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
alias zerofill="sudo shred -n 2 -z -v" #/dev/sda1 # in ssd disks set -n to 1

## Raspi
alias rpip="arp -na | grep -i 'b8:27:eb'"
alias rpssh="ssh ubuntu@192.168.0.120 -p 2222"

# Image Convert
alias heic2jpeg="ls *.(heic|HEIC) -1 | sed -e 's/\.HEIC$//' | xargs -I {} convert {}.HEIC {}.jpeg"
alias heic2png="ls *.(heic|HEIC) -1 | sed -e 's/\.HEIC$//' | xargs -I {} convert {}.HEIC {}.png"
alias jpeg2pdf="ls *.jpeg -1 | sed -e 's/\.jpeg$//' | xargs -I {} convert {}.jpeg {}.pdf"
alias png2pdf="ls *.png -1 | sed -e 's/\.png$//' | xargs -I {} convert {}.png {}.pdf"
alias zpng="pngquant --force --quality=40-100 --strip --skip-if-larger --verbose"

# Local postgresql
alias pgstart="sudo systemctl start postgresql.service"
alias pgstop="sudo systemctl stop postgresql.service"
alias pgenable="sudo systemctl enable postgresql.service"
alias pgdisable="sudo systemctl disable postgresql.service"
alias pgstatus="sudo systemctl status postgresql.service"

# Local redis
alias rdstart="sudo systemctl start redis.service"
alias rdstop="sudo systemctl stop redis.service"
alias rdenable="sudo systemctl enable redis.service"
alias rddisable="sudo systemctl disable redis.service"
alias rdstatus="sudo systemctl status redis.service"

# Docker
alias dcd="docker-compose down"
alias dcupd="docker-compose up -d"
# alias ddc="docker rm -f $(docker ps -a -q)"
# alias ddv="docker volume rm $(docker volume ls -q)"
alias dcp="docker-compose pause"
alias dcu="docker-compose unpause"
alias dcrr="docker-compose restart"
alias g2m="sudo chown -R lc:lc"

# Rails
alias be="bundle exec"
alias ra="bundle exec rubocop"

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


# Overgrad
alias dca="docker attach overgrad-rails-1"
