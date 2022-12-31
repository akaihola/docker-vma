FROM debian:bullseye
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER antti@bitalo.com
RUN apt-get update \
 && apt-get install -y gnupg
ADD proxmox.list /etc/apt/sources.list.d/proxmox.list
ADD https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg /tmp/key.asc
RUN apt-key add /tmp/key.asc \
 && apt-get update \
 && apt-get install -y pve-qemu-kvm --no-install-recommends
