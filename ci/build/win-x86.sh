export DEPOT_TOOLS_WIN_TOOLCHAIN=0
gn gen out/Windows-x86 --args="target_os=\"win\" target_cpu=\"x86\" is_debug=false rtc_include_tests=false rtc_use_h264=false is_component_build=false use_rtti=true use_custom_libcxx=false rtc_enable_protobuf=false"