###############################################
#### Unittests ################################
###############################################
LOCAL_PATH:= $(call my-dir)
# Copied from libjingle.csons : NOT MODIFIED

LIBJINGLE_UNITTEST_CFLAGS:= -DLIBJINGLE_UNITTEST \
			-DEXPAT_RELATIVE_PATH \
			-DSRTP_RELATIVE_PATH

LIBJINGLE_UNITTEST_CFLAGS += $(MY_JINGLE_CPPFLAGS)

LIBJINGLE_UNITTEST_C_INCLUDES:= \
		$(LIBJINGLE_PATH)/talk/third_party/gtest/include \
		$(LIBJINGLE_PATH)/talk/third_party/expat/lib \
		$(LIBJINGLE_PATH)/talk/third_party/srtp \
		$(LIBJINGLE_PATH)/talk/third_party/gtest \
		$(LIBJINGLE_PATH)/talk/third_party/gtest/include

# gunit
# Copied from libjingle.csons : NOT MODIFIED
include $(CLEAR_VARS)
LOCAL_MODULE:= gunit
LOCAL_SRC_FILES:= talk/third_party/gtest/src/gtest-all.cc
LOCAL_CFLAGS:= $(LIBJINGLE_UNITTEST_CFLAGS)
LOCAL_EXPORT_CFLAGS:= $(LOCAL_CFLAGS)
LOCAL_C_INCLUDES:= $(LIBJINGLE_UNITTEST_C_INCLUDES)
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_STATIC_LIBRARY)

# unittest_main lib
# Copied from libjingle.csons : NOT MODIFIED
include $(CLEAR_VARS)
LOCAL_MODULE:= unittest_main
LOCAL_STATIC_LIBRARIES:= gunit
LOCAL_SRC_FILES:= talk/base/unittest_main.cc
LOCAL_CFLAGS:= $(LIBJINGLE_UNITTEST_CFALGS)
LOCAL_C_INCLUDES:= $(LIBJINGLE_UNITTEST_C_INCLUDES)
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_STATIC_LIBRARY)

##############
# base_unittest
# Copied from libjingle.csons( original name 'base') : MODIFIED
# del: talk/base/latebindingsymboltable_unittest.cc
include $(CLEAR_VARS)
LOCAL_MODULE:= base_unittest

# systable not used on android, skip this file
#LOCAL_LINUX_SYSTABLE_SRC_FILES:= talk/base/latebindingsymboltable_unittest.cc

LOCAL_LINUX_SRC_FILES:= \
                talk/base/linux_unittest.cc \
                talk/base/linuxfdwalk_unittest.cc
LOCAL_POSIX_SRC_FILES:= \
		talk/base/sslidentity_unittest.cc \
                talk/base/sslstreamadapter_unittest.cc

# Not used for now
LOCAL_EXTRA_SRC_FILE:= \
                talk/base/dbus_unittest.cc \
                talk/base/json_unittest.cc \
                talk/base/linuxwindowpicker_unittest.cc

LOCAL_SRC_FILES:= \
		$(LOCAL_LINUX_SRC_FILES) \
		$(LOCAL_POSIX_SRC_FILES)

LOCAL_SRC_FILES += \
		talk/base/asynchttprequest_unittest.cc \
		talk/base/atomicops_unittest.cc \
		talk/base/autodetectproxy_unittest.cc \
		talk/base/bandwidthsmoother_unittest.cc \
		talk/base/base64_unittest.cc \
		talk/base/buffer_unittest.cc \
		talk/base/bytebuffer_unittest.cc \
		talk/base/cpuid_unittest.cc \
		talk/base/cpumonitor_unittest.cc \
		talk/base/event_unittest.cc \
		talk/base/filelock_unittest.cc \
		talk/base/fileutils_unittest.cc \
		talk/base/helpers_unittest.cc \
		talk/base/host_unittest.cc \
		talk/base/httpbase_unittest.cc \
		talk/base/httpcommon_unittest.cc \
		talk/base/httpserver_unittest.cc \
		talk/base/ipaddress_unittest.cc \
		talk/base/logging_unittest.cc \
		talk/base/md5digest_unittest.cc \
		talk/base/messagedigest_unittest.cc \
		talk/base/messagequeue_unittest.cc \
		talk/base/multipart_unittest.cc \
		talk/base/nat_unittest.cc \
		talk/base/network_unittest.cc \
		talk/base/nullsocketserver_unittest.cc \
		talk/base/optionsfile_unittest.cc \
		talk/base/pathutils_unittest.cc \
		talk/base/physicalsocketserver_unittest.cc \
		talk/base/proxy_unittest.cc \
		talk/base/proxydetect_unittest.cc \
		talk/base/ratelimiter_unittest.cc \
		talk/base/ratetracker_unittest.cc \
		talk/base/referencecountedsingletonfactory_unittest.cc \
		talk/base/rollingaccumulator_unittest.cc \
		talk/base/sha1digest_unittest.cc \
		talk/base/sharedexclusivelock_unittest.cc \
		talk/base/signalthread_unittest.cc \
		talk/base/socket_unittest.cc \
		talk/base/socketaddress_unittest.cc \
		talk/base/stream_unittest.cc \
		talk/base/stringencode_unittest.cc \
		talk/base/stringutils_unittest.cc \
		talk/base/systeminfo_unittest.cc \
		talk/base/task_unittest.cc \
		talk/base/testclient_unittest.cc \
		talk/base/thread_unittest.cc \
		talk/base/timeutils_unittest.cc \
		talk/base/urlencode_unittest.cc \
		talk/base/versionparsing_unittest.cc \
		talk/base/virtualsocket_unittest.cc

LOCAL_STATIC_LIBRARIES:=unittest_main
LOCAL_SHARED_LIBRARIES:=libjingle
LOCAL_CFLAGS:= $(LIBJINGLE_UNITTEST_CFALGS)
LOCAL_C_INCLUDES:= $(LIBJINGLE_UNITTEST_C_INCLUDES)
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_EXECUTABLE)

# p2p_unittest: (original name 'p2p')
# Copied from libjingle.csons : NOT MODIFIED
include $(CLEAR_VARS)
LOCAL_MODULE:= p2p_unittest
LOCAL_SRC_FILES:= \
                talk/p2p/base/p2ptransportchannel_unittest.cc \
                talk/p2p/base/port_unittest.cc \
                talk/p2p/base/pseudotcp_unittest.cc \
                talk/p2p/base/relayport_unittest.cc \
                talk/p2p/base/relayserver_unittest.cc \
                talk/p2p/base/session_unittest.cc \
                talk/p2p/base/stun_unittest.cc \
                talk/p2p/base/stunport_unittest.cc \
                talk/p2p/base/stunrequest_unittest.cc \
                talk/p2p/base/stunserver_unittest.cc \
                talk/p2p/base/transport_unittest.cc \
                talk/p2p/client/connectivitychecker_unittest.cc \
                talk/p2p/client/portallocator_unittest.cc

LOCAL_STATIC_LIBRARIES:=unittest_main
LOCAL_SHARED_LIBRARIES:=libjingle
LOCAL_CFLAGS:= $(LIBJINGLE_UNITTEST_CFALGS)
LOCAL_C_INCLUDES:= $(LIBJINGLE_UNITTEST_C_INCLUDES)
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_EXECUTABLE)

# media_unittest: (original name 'media')
# Copied from libjingle.csons : MODIFIED
include $(CLEAR_VARS)
LOCAL_MODULE:= media_unittest
LOCAL_SRC_FILES:= \
		talk/session/phone/channel_unittest.cc \
		talk/session/phone/channelmanager_unittest.cc \
		talk/session/phone/codec_unittest.cc \
		talk/session/phone/currentspeakermonitor_unittest.cc \
		talk/session/phone/dataengine_unittest.cc \
		talk/session/phone/dummydevicemanager_unittest.cc \
		talk/session/phone/filemediaengine_unittest.cc \
		talk/session/phone/filevideocapturer_unittest.cc \
		talk/session/phone/mediarecorder_unittest.cc \
		talk/session/phone/mediamessages_unittest.cc \
		talk/session/phone/mediasession_unittest.cc \
		talk/session/phone/mediasessionclient_unittest.cc \
		talk/session/phone/rtcpmuxfilter_unittest.cc \
		talk/session/phone/rtpdump_unittest.cc \
		talk/session/phone/rtputils_unittest.cc \
		talk/session/phone/srtpfilter_unittest.cc \
		talk/session/phone/ssrcmuxfilter_unittest.cc \
		talk/session/phone/testutils.cc \
		talk/session/phone/videocapturer_unittest.cc \
		talk/session/phone/videocommon_unittest.cc

#REMOVED SRC FILES :
# talk/session/phone/devicemanager_unittest.cc \

LOCAL_STATIC_LIBRARIES:=unittest_main
LOCAL_SHARED_LIBRARIES:=libjingle
LOCAL_CFLAGS:= $(LIBJINGLE_UNITTEST_CFALGS)
LOCAL_C_INCLUDES:= $(LIBJINGLE_UNITTEST_C_INCLUDES)
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_EXECUTABLE)

# sound_unittest: (original name 'sound')
# Copied from libjingle.csons : NOT MODIFIED
include $(CLEAR_VARS)
LOCAL_MODULE:= sound_unittest
LOCAL_SRC_FILES:= talk/sound/automaticallychosensoundsystem_unittest.cc
LOCAL_STATIC_LIBRARIES:=unittest_main
LOCAL_SHARED_LIBRARIES:=libjingle
LOCAL_CFLAGS:= $(LIBJINGLE_UNITTEST_CFALGS)
LOCAL_C_INCLUDES:= $(LIBJINGLE_UNITTEST_C_INCLUDES)
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_EXECUTABLE)

# xmllite_unittest: (original name 'xmllite')
# Copied from libjingle.csons : NOT MODIFIED
include $(CLEAR_VARS)
LOCAL_MODULE:= xmllight_unittest
LOCAL_SRC_FILES:= \
		talk/xmllite/qname_unittest.cc \
		talk/xmllite/xmlbuilder_unittest.cc \
		talk/xmllite/xmlelement_unittest.cc \
		talk/xmllite/xmlnsstack_unittest.cc \
		talk/xmllite/xmlparser_unittest.cc \
		talk/xmllite/xmlprinter_unittest.cc

LOCAL_STATIC_LIBRARIES:=unittest_main
LOCAL_SHARED_LIBRARIES:=libjingle
LOCAL_CFLAGS:= $(LIBJINGLE_UNITTEST_CFALGS)
LOCAL_C_INCLUDES:= $(LIBJINGLE_UNITTEST_C_INCLUDES)
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_EXECUTABLE)

# xmpp_unittest: (original name 'xmpp')
# Copied from libjingle.csons : NOT MODIFIED
include $(CLEAR_VARS)
LOCAL_MODULE:= xmpp_unittest
# extra src Not used so far.
LOCAL_EXTRA_SRC_FILES:= talk/xmpp/chatroommodule_unittest.cc
LOCAL_SRC_FILES:= \
		talk/xmpp/hangoutpubsubclient_unittest.cc \
		talk/xmpp/jid_unittest.cc \
		talk/xmpp/mucroomconfigtask_unittest.cc \
		talk/xmpp/mucroomlookuptask_unittest.cc \
		talk/xmpp/pubsubclient_unittest.cc \
		talk/xmpp/pubsubtasks_unittest.cc \
		talk/xmpp/util_unittest.cc \
		talk/xmpp/xmppengine_unittest.cc \
		talk/xmpp/xmpplogintask_unittest.cc \
		talk/xmpp/xmppstanzaparser_unittest.cc

LOCAL_STATIC_LIBRARIES:=unittest_main
LOCAL_SHARED_LIBRARIES:=libjingle
LOCAL_CFLAGS:= $(LIBJINGLE_UNITTEST_CFALGS)
LOCAL_C_INCLUDES:= $(LIBJINGLE_UNITTEST_C_INCLUDES)
LOCAL_CPP_EXTENSION:= .cc
include $(BUILD_EXECUTABLE)
