FROM archlinux:latest

RUN pacman -Syyu --needed --noconfirm

COPY .dockerdev/Aptfile /tmp/Aptfile

RUN pacman -Sy $(cat /tmp/Aptfile | xargs) --needed --noconfirm

# Create user with sudo
RUN useradd -m -d /home/luciotbc -s /bin/bash luciotbc && \ 
    groupadd sudo && \ 
    usermod -aG sudo luciotbc && \ 
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER luciotbc

RUN curl -sL https://raw.githubusercontent.com/luciotbc/dotfiles/master/_setup.sh | bash
