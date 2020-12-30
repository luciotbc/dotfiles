FROM archlinux:latest

RUN pacman -Syyu --needed --noconfirm

COPY .dockerdev/Aptfile /tmp/Aptfile

RUN pacman -Sy $(cat /tmp/Aptfile | xargs) --needed --noconfirm

# Create user with sudo
RUN useradd -m -d /home/lucio -s /bin/bash lucio && \ 
    groupadd sudo && \ 
    usermod -aG sudo lucio && \ 
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER lucio

WORKDIR /home/lucio
