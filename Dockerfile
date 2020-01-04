FROM archlinux:latest

RUN pacman -Syyu --needed --noconfirm

COPY .dockerdev/Aptfile /tmp/Aptfile

RUN pacman -Sy $(cat /tmp/Aptfile | xargs) --needed --noconfirm
# RUN pacman-mirrors --geoip
# RUN git clone git@github.com:luciotbc/dotfiles.git ~/.dotfiles

# RUN cd ~/.dotfiles
# RUN ./install.sh
