FROM archlinux
LABEL maintainer="jberenguer.dev@gmail.com"

ARG repohost
RUN echo "Server = http://${repohost}/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

RUN pacman -Sy --noconfirm p7zip

RUN useradd extractor

WORKDIR /home/extractor
USER extractor

ENTRYPOINT ["/usr/bin/7z"]
