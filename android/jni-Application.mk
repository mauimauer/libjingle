MY_DYNAMIC_STLLIB:= gnustl_shared
APP_STL := $(MY_DYNAMIC_STLLIB)

APP_PLATFORM := android-9

# Build libssl with DTLS support
MY_USE_DTLS := 1

# Build libjingle unittest
MY_USE_UNITTEST := 1
## TODO this line was addes as an attempt to build atomicop test
APP_ABI := armeabi-v7a

