vpython ./tools_webrtc/android/build_aar.py --build-dir webrtc_android --output ./webrtc_android/libwebrtc.aar --arch armeabi-v7a arm64-v8a x86_64 x86 --extra-gn-args 'is_java_debug=false rtc_include_tests=false rtc_use_h264=false is_component_build=false use_rtti=true rtc_build_examples=false treat_warnings_as_errors=false'