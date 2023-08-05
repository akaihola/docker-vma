FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER antti@bitalo.com
ADD proxmox.list /etc/apt/sources.list.d/proxmox.list
ADD --chown=_apt:root http://download.proxmox.com/debian/proxmox-release-bookworm.gpg /etc/apt/trusted.gpg.d
RUN apt-get update \
 && apt-get install --no-install-recommends -y pve-qemu-kvm zstd lzop gzip \
 && apt-get clean -m \
 && rm -r /var/lib/apt/lists/*
