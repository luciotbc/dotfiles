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
  drill TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F '"' '$2!=""{print $2}'
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

function cloneall() {
  # Make the url to the input github organization's repository page.
  ORG_URL="https://api.github.com/orgs/${1}/repos?per_page=200"

  # List of all repositories of that organization (seperated by newline-eol).
  ALL_REPOS=$(curl -s ${ORG_URL} | grep html_url | awk 'NR%2 == 0' |
    cut -d ':' -f 2-3 | tr -d '",')

  # Clone all the repositories.
  for ORG_REPO in ${ALL_REPOS}; do
    git clone ${ORG_REPO}.git
  done
}

# migrated to a script in lscripts/src/centercurrentwindow.sh
# # Center current windows on the second monitor
# function centercurrentwindow() {
#   IFS='x' read screenWidth screenHeight < <(xdpyinfo | grep dimensions | grep -o '[0-9x]*' | head -n1)

#   width=$(xdotool getactivewindow getwindowgeometry --shell | head -4 | tail -1 | sed 's/[^0-9]*//')
#   height=$(xdotool getactivewindow getwindowgeometry --shell | head -5 | tail -1 | sed 's/[^0-9]*//')

#   ## I added + 683 to center only on the second monitor
#   newPosX=$((screenWidth / 2 - width / 2 + 683))
#   newPosY=$((screenHeight / 2 - height / 2))

#   xdotool getactivewindow windowmove "$newPosX" "$newPosY"
# }
