FROM archlinux
LABEL maintainer="jberenguer.dev@gmail.com"

ARG repohost=mirrors.mit.edu
ARG containeruser=cuser

RUN echo "Server = http://${repohost}/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

RUN useradd ${containeruser} && mkhomedir_helper ${containeruser}

RUN pacman -Sy --noconfirm transmission-cli ; \
    echo -e 'y\ny' | pacman -Scc

WORKDIR /home/${containeruser}
USER ${containeruser}

CMD /bin/bash

