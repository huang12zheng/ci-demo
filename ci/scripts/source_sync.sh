#!/bin/bash
set -x

export PATH=`pwd`/depot_tools:"$PATH"

fetch --no-history --nohooks webrtc
cd webrtc
gclient sync​ -D --force --reset --with_branch_heads