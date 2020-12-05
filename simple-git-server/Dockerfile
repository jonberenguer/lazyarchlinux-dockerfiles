FROM archlinux:latest

LABEL maintainer="jberenguer.dev@gmail.com"

RUN pacman -Sy --noconfirm openssh && \
    ssh-keygen -A && \
    sed -i -e 's/^#*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config ; \
    sed -i -e 's/^#*PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config ; \
    sed -i -e 's/^#*PubkeyAuthentication.*/PubkeyAuthentication yes/' /etc/ssh/sshd_config

RUN useradd git && mkhomedir_helper git ; pacman -Sy --noconfirm git

ENTRYPOINT ["/usr/bin/sshd","-D"]
