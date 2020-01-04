FROM archlinux:latest

RUN pacman -Syyu --needed --noconfirm

COPY .dockerdev/Aptfile /tmp/Aptfile

RUN pacman -Sy $(cat /tmp/Aptfile | xargs) --needed --noconfirm
# RUN curl -sL https://raw.githubusercontent.com/luciotbc/dotfiles/lc-new-install/_setup.sh | bash
# RUN git clone git@github.com:luciotbc/dotfiles.git ~/.dotfiles

# RUN cd ~/.dotfiles
# RUN ./install.sh
