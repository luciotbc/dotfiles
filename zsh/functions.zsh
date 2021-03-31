# FUNCTIONS

function backup() {
  git add --all
  git commit -am ':wrench: [WIP] Done for today, cya tomorrow [ci skip] :wave:'
  git push $@
}

function git-ignore() {
  curl -L -s https://www.gitignore.io/api/$@
}

function most() {
  history | awk '{
      cmd[$2]++; count++;
    }
    END {
      for (i in cmd) print cmd[i]/count*100 "%", i
    }' | sort -nr | head -n20 | column -c3 -s " " -t
}

function mkcd() {
  mkdir -p $@
  cd $@
}

function open() {
  xdg-open $@ &
  disown
}

function please() {
  CMD=$(history -1 | cut -d" " -f4-)
  sudo "$CMD"
}

function cwb() {
  curl -H "Accept-Language: pt-BR" 'wttr.in/~'${1:-Curitiba}$2'?'${3:-0}
}

function luna() {
  curl -H "Accept-Language: pt-BR" 'wttr.in/~'${1:-Lunardelli}$2'?'${3:-0}
}

function myip() {
  dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}'
}

function localip() {
  /sbin/ip -o -4 addr list wlp3s0 | awk '{print $4}' | cut -d/ -f1
}

function localip6() {
  /sbin/ip -o -6 addr list wlp3s0 | awk '{print $4}' | cut -d/ -f1
}

function mk() {
  mkdir -p -- "$1" &&
    cd -P -- "$1"
}

# Docker alias
function drb() {
  docker-compose run $1 bash
}

function da() {
  docker attach $(docker-compose ps -q $1)
}
