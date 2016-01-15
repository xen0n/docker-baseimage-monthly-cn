#!/bin/bash

. /build/base-env.sh

# cleanup
apt-get clean -qq
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup
rm -rf /build
