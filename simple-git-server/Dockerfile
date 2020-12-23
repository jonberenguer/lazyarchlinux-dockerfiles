FROM archlinux:latest
LABEL maintainer="jberenguer.dev@gmail.com"

ARG repohost="mirrors.mit.edu"
RUN echo "Server = http://${repohost}/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

RUN pacman -Sy --noconfirm openssh && \
    ssh-keygen -A && \
    sed -i -e 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config ; \
    sed -i -e 's/^#*PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config ; \
    sed -i -e 's/^#*PubkeyAuthentication.*/PubkeyAuthentication yes/' /etc/ssh/sshd_config

RUN useradd git && mkhomedir_helper git ; pacman -Sy --noconfirm git

ENTRYPOINT ["/usr/bin/sshd","-D","-e"]
