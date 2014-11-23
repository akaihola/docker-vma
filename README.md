# Table of Contents
- [Introduction](#introduction)
- [Contributing](#contributing)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Upgrading](#upgrading)

# Introduction

Dockerfile to build a Debian Wheezy image
with the Proxmox [vma](http://pve.proxmox.com/wiki/VMA#Command_line_utility)
command line utility

# Contributing

If you find this image useful here's how you can help:

- Send a Pull Request with your awesome new features and bug fixes
- Help new users with [Issues](https://github.com/akaihola/docker-vma/issues) they may encounter
- Send me a tip on [Gratipay](https://gratipay.com/akaihola/) or [using Bitcoin](https://onename.io/akaihola)

# Installation
Pull the latest version of the image from the docker index. This is the recommended method of installation as it is easier to update image in the future. These builds are performed by the **Docker Trusted Build** service.

```
docker pull akaihola/vma:latest
```

Alternately you can build the image yourself.

```
git clone https://github.com/akaihola/docker-vma.git
cd docker-vma
docker build -t "$USER/vma" .
```

# Quick Start
Run the image and mount the directory containing your VMA images:

```
# docker run -t -i -v <IMAGES DIRECTORY>:/images akaihola/vma:latest /bin/bash
root@eed2c0767dc0:/# cd /images
root@eed2c0767dc0:/images# vma
usage: vma command [command options]

vma list <filename>
vma create <filename> [-c config] <archive> pathname ...
vma extract <filename> [-v] [-r <fifo>] <targetdir>
vma verify <filename> [-v]
root@eed2c0767dc0:/images# vma extract my.vma my
```

# Upgrading

To upgrade to newer releases, simply upgrade the docker image:

```
docker pull akaihola/vma:latest
```
