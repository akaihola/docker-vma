FROM debian:wheezy
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER antti@bitalo.com
ADD proxmox.list /etc/apt/sources.list.d/proxmox.list
ADD http://download.proxmox.com/debian/key.asc /tmp/key.asc
RUN apt-key add /tmp/key.asc \
 && apt-get update \
 && apt-get install -y pve-qemu-kvm
