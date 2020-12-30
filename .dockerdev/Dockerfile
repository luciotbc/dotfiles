FROM archlinux:latest

ARG UNAME=lucio
ARG UID=1000
ARG GID=1000

RUN pacman -Syyu --needed --noconfirm
COPY .dockerdev/Aptfile /tmp/Aptfile
RUN pacman -Sy $(cat /tmp/Aptfile | xargs) --needed --noconfirm

# Create a user
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME

# Create add sudo permitions
# RUN groupadd -o sudo
RUN usermod -aG sudo $UNAME 
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER $UNAME
WORKDIR /home/lucio
CMD /bin/bash
