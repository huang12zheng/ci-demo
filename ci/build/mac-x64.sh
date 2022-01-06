gn gen out/macOS-x64 --args="
      target_os=\"mac\"
      target_cpu=\"x64\"
      mac_deployment_target=\"10.11\"
      is_component_build = false
      rtc_include_tests = false
      is_debug = false
      target_cpu = \"x64\"
      rtc_libvpx_build_vp9 = false
      use_goma = false
      rtc_enable_symbol_export = true
      rtc_libvpx_build_vp9 = true
      rtc_include_tests = false
      rtc_build_examples = false
      rtc_use_h264 = false
      use_rtti = true
      libcxx_abi_unstable = false
      enable_dsyms = false
      is_debug = false
      enable_dsyms = true
      enable_stripping = true"

ninja -C out/macOS-x64 mac_framework_bundle