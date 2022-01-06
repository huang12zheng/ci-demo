#!/bin/bash
set -x

git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=`pwd`/depot_tools:"$PATH"
gclient
ls
fetch --no-history --nohooks webrtc

# if [ "`uname -s`" != "Darwin" ]; then
# depot_tools/build/install-build-deps.sh
# fi