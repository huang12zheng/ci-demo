#!/bin/bash
set -x

git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=`pwd`/depot_tools:"$PATH"
gclient
ls -a
fetch --no-history --nohooks webrtc
cd webrtc
gclient sync​ -D --force --reset --with_branch_heads