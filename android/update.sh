#! /bin/bash +x

DEVICE=emulator-5554
ABI=armeabi-v7a

# jump to project's root
pushd ../../

ant debug
adb -s $DEVICE uninstall com.google.libjingle.example
adb -s $DEVICE install bin/libjingle-debug.apk 
adb -s $DEVICE shell mkdir /data/data/com.google.libjingle.example/bin/
adb -s $DEVICE push libs/$ABI/ /data/data/com.google.libjingle.example/bin/
adb -s $DEVICE push run.sh /data/data/com.google.libjingle.example/bin/
adb -s $DEVICE shell chmod 777 /data/data/com.google.libjingle.example/bin/run.sh
adb -s $DEVICE shell mkdir /sdcard/RTPDATA
adb -s $DEVICE push ../RTPDATA /sdcard/RTPDATA
popd