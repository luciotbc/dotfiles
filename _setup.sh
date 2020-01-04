#!/bin/bash

# Script to install the dotfiles
# Arch or Manjaro system.
#
# Run as root or insert `sudo -E` before `bash`:
#
# curl -sL https://raw.githubusercontent.com/luciotbc/dotfiles/master/_setup.sh | bash -
#   or
# wget -qO- https://raw.githubusercontent.com/luciotbc/dotfiles/master/_setup.sh | bash -
#
# CONTRIBUTIONS TO THIS SCRIPT
#
# This script is built from a template in
# https://github.com/luciotbc/dotfiles
# please don't submit pull requests against the built scripts.
#
set -e

# Default settings
DOTFILES=${DOTFILES:-~/.dotfiles}
REPO=${REPO:-luciotbc/dotfiles}
REMOTE=${REMOTE:-https://github.com/${REPO}.git}
BRANCH=${BRANCH:-master}

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

error() {
  echo ${RED}"Error: $@"${RESET} >&2
}

setup_color() {
  # Only use colors if connected to a terminal
  if [ -t 1 ]; then
    RED=$(printf '\033[31m')
    GREEN=$(printf '\033[32m')
    YELLOW=$(printf '\033[33m')
    BLUE=$(printf '\033[34m')
    BOLD=$(printf '\033[1m')
    RESET=$(printf '\033[m')
  else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    RESET=""
  fi
}
setup_dotfiles(){
  # Prevent the cloned repository from having insecure permissions. Failing to do
  # so causes compinit() calls to fail with "command not found: compdef" errors
  # for users with insecure umasks (e.g., "002", allowing group writability). Note
  # that this will be ignored under Cygwin by default, as Windows ACLs take
  # precedence over umasks except for filesystems mounted with option "noacl".
  umask g-w,o-w

  echo "${BLUE}Cloning Oh My Dotfiles...${RESET}"

  command_exists git || {
    error "git is not installed"
    exit 1
  }

  git clone -c core.eol=lf -c core.autocrlf=false \
    -c fsck.zeroPaddedFilemode=ignore \
    -c fetch.fsck.zeroPaddedFilemode=ignore \
    -c receive.fsck.zeroPaddedFilemode=ignore \
    --depth=1 --branch "$BRANCH" "$REMOTE" "$DOTFILES" || {
    error "git clone of oh-my-dotfiles repo failed"
    exit 1
  }

  echo
}

main() {
  setup_color
  if [ -d "$DOTFILES" ]; then
    cat <<-EOF
      ${YELLOW}You already have Oh My Dotfiles installed.${RESET}
      You'll need to remove '$DOTFILES' if you want to reinstall.
    EOF
    exit 1
  fi

  setup_dotfiles

  echo "Setup dotifiles"
}

main "$@"
