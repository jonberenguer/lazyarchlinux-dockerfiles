FROM archlinux:latest
LABEL maintainer="jberenguer.dev@gmail.com"

ARG repohost="mirrors.mit.edu"
ARG containeruser=git

RUN echo "Server = http://${repohost}/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

RUN useradd ${containeruser} && mkhomedir_helper ${containeruser}

RUN pacman -Sy --noconfirm openssh git && \
    ssh-keygen -A && \
    sed -i -e 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config ; \
    sed -i -e 's/^#*PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config ; \
    sed -i -e 's/^#*PubkeyAuthentication.*/PubkeyAuthentication yes/' /etc/ssh/sshd_config ; \
    echo -e 'y\ny' | pacman -Scc

ENTRYPOINT ["/usr/bin/sshd","-D","-e"]
