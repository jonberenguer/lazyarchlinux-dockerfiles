FROM archlinux
LABEL maintainer="jberenguer.dev@gmail.com"

ARG repohost=mirrors.mit.edu
RUN echo "Server = http://${repohost}/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

RUN pacman -Sy --noconfirm transmission-cli

RUN useradd torrentuser && mkhomedir_helper torrentuser

WORKDIR /home/torrentuser
USER torrentuser

CMD /bin/bash

