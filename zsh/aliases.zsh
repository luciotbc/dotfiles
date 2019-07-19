# ALIASES
alias t="echo test"
alias c="clear"
alias v="nvim"
alias vim="nvim"
alias :q="exit"

# System
alias sysupdate="sudo pacman -Syu --needed --noconfirm"

# Pipefy
alias pdcup="docker-compose -f full-docker-compose.yml up web sidekiq"
alias pdcr="docker-compose -f full-docker-compose.yml run"
alias pdc="docker-compose -f full-docker-compose.yml"
alias prspec="docker-compose -f full-docker-compose.yml run web_test rspec"

