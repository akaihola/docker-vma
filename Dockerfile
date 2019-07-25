FROM debian:buster
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER antti@bitalo.com
RUN apt-get update \
 && apt-get install -y gpg
ADD proxmox.list /etc/apt/sources.list.d/proxmox.list
ADD http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg /tmp/key.asc
RUN apt-key add /tmp/key.asc \
 && apt-get update \
 && apt-get install -y pve-qemu-kvm
