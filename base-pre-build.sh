#!/bin/bash

source /build/base-env.sh

# configure apt-get
# Temporarily disable dpkg fsync to make building faster.
if [[ ! -e /etc/dpkg/dpkg.cfg.d/docker-apt-speedup ]]; then
	echo force-unsafe-io > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup
fi

# upgrade base system
sed -i 's/archive\.ubuntu\.com/cn.archive.ubuntu.com/' /etc/apt/sources.list
echo 'deb http://archive.canonical.com/ubuntu trusty partner' >> /etc/apt/sources.list
echo 'deb-src http://archive.canonical.com/ubuntu trusty partner' >> /etc/apt/sources.list
apt-get update -qq
apt-get upgrade -qqy -o Dpkg::Options::="--force-confold"
