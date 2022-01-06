python ./tools_webrtc/ios/build_ios_libs.py --build_config release --arch device:arm64 simulator:arm64 simulator:x64 --extra-gn-args \ 
      rtc_libvpx_build_vp9=true \
      rtc_include_tests=false \
      rtc_build_examples=false \
      rtc_use_h264=false \
      use_rtti=true \
      libcxx_abi_unstable=false \
      enable_dsyms=false \
      is_debug=false