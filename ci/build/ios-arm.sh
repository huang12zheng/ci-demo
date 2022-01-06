gn gen out/ios-arm-device --args="
      target_os = \"ios\"
      ios_enable_code_signing = false
      use_xcode_clang = true
      is_component_build = false
      rtc_include_tests = false
      is_debug = false
      target_environment = \"device\"
      target_cpu = \"arm\"
      ios_deployment_target = \"10.0\"
      rtc_libvpx_build_vp9 = false
      enable_ios_bitcode = false
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

ninja -C out/ios-arm-device ios_framework_bundle