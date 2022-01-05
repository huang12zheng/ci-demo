#!/bin/bash

echo 1
# set -ex

# apt-get update
# apt-get -y upgrade

# # Tzdata in Ubuntu 18.04 must be noninteractive to stop running
# apt-get -y install tzdata
# dpkg-reconfigure -f noninteractive tzdata

# # Ubuntu 20.04 install snapcraft on libwebrtc install-build-deps.sh
# # The installation fails because snapD does not move in the container, so "Skip" must be set to default on failure, otherwise execution will stop.
# # snapcraft is only entered as a dependency and is not used in the libwebrTC build itself, so skipping is ok.
# # However, this variable is defined at critical level, so it cannot be set externally in the usual way, so we have to override the db_get() in debconf.
# echo 'db_get () { if [ "$@" = "snapcraft/snap-no-connectivity" ]; then RET="Skip"; else _db_cmd "GET $@"; fi }' >> /usr/share/debconf/confmodule
# apt-get install -y snapcraft

# export DEBIAN_FRONTEND=noninteractive

# apt-get -y install \
#   binutils \
#   git \
#   libsdl2-dev \
#   locales \
#   lsb-release \
#   python \
#   python-setuptools \
#   python3 \
#   python3-setuptools \
#   rsync \
#   sudo \
#   unzip \
#   vim \
#   wget