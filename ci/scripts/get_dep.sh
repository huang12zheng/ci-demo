git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
depot_tools/fetch --no-history --nohooks --with_branch_heads webrtc
depot_tools/gclient sync --no-history --nohooks

depot_tools/build/install-build-deps.sh