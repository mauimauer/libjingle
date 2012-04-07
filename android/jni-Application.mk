MY_DYNAMIC_STLLIB:= gnustl_shared
APP_STL := $(MY_DYNAMIC_STLLIB)

APP_PLATFORM := android-9

# Build libssl with DTLS support
MY_USE_DTLS := 1