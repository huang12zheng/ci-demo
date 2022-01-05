#!/bin/bash

set -ex

apt-get update
apt-get -y upgrade

# Tzdata in Ubuntu 18.04 must be noninteractive to stop running
apt-get -y install tzdata
dpkg-reconfigure -f noninteractive tzdata

export DEBIAN_FRONTEND=noninteractive

apt-get -y install \
  build-essential \
  curl \
  git \
  gtk+-3.0 \
  lbzip2 \
  libgtk-3-dev \
  libstdc++6 \
  locales \
  lsb-release \
  multistrap \
  python \
  python-setuptools \
  python3 \
  python3-setuptools \
  rsync \
  software-properties-common \
  sudo \
  unzip \
  vim \
  xz-utils

# Fixed multistrap not moving in Ubuntu 18.04.
# https://github.com/volumio/Build/issues/348#issuecomment-462271607 を参照
sed -e 's/Apt::Get::AllowUnauthenticated=true/Apt::Get::AllowUnauthenticated=true";\n$config_str .= " -o Acquire::AllowInsecureRepositories=true/' -i /usr/sbin/multistrap

# Ubuntu 18.04 failed to contain glibcXX_3.4.26
# Install where you have the new libstdc++6 package
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt update
apt-get install -y --only-upgrade libstdc++6