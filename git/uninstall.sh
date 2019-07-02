#!/bin/bash

sudo pacman -Rs git-lfs --needed --noconfirm
sudo diff-so-fancy -Rs git-lfs --needed --noconfirm

unlink ~/.gitconfig
