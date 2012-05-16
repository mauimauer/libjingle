MK_DIR:=$(call my-dir)
LOCAL_EXTERNALS:= $(MK_DIR)/..
LOCAL_PATH:= $(LOCAL_EXTERNALS)/libjingle
include $(CLEAR_VARS)

include $(MK_DIR)/config.mk

# Copied from libjingle.csons : NOT_MODIFIED
LOCAL_POSIX_SRC_FILES := \
		talk/base/unixfilesystem.cc \
		talk/base/openssladapter.cc \
		talk/base/openssldigest.cc \
		talk/base/opensslidentity.cc \
		talk/base/opensslstreamadapter.cc \
		talk/base/posix.cc \
		talk/base/sslidentity.cc \
		talk/base/sslstreamadapter.cc

# Original linux sources from libjingle.scons
##LOCAL_LINUX_SRC_FILES := \
##               talk/base/latebindingsymboltable.cc \
##               talk/base/linux.cc \
##               talk/base/linuxfdwalk.c \
##               talk/base/libdbusglibsymboltable.cc \
##               talk/session/phone/libudevsymboltable.cc \
##               talk/session/phone/linuxdevicemanager.cc \
##               talk/session/phone/v4llookup.cc \
##               talk/sound/alsasoundsystem.cc \
##               talk/sound/alsasymboltable.cc \
##               talk/sound/linuxsoundsystem.cc \
##               talk/sound/pulseaudiosoundsystem.cc \
##               talk/sound/pulseaudiosymboltable.cc \
##

# Linux speciffic sources for android
LOCAL_LINUX_SRC_FILES := \
		talk/base/linux.cc \
		talk/base/linuxfdwalk.c \
		talk/sound/linuxsoundsystem.cc

LIBJINGLE_SRC_FILES := $(LOCAL_POSIX_SRC_FILES) \
		$(LOCAL_LINUX_SRC_FILES)


## Copied fro libjingle.scons: NOT MODIFIED
LIBJINGLE_SRC_FILES += \
		talk/base/asyncfile.cc \
		talk/base/asynchttprequest.cc \
		talk/base/asyncsocket.cc \
		talk/base/asynctcpsocket.cc \
		talk/base/asyncudpsocket.cc \
		talk/base/autodetectproxy.cc \
		talk/base/bandwidthsmoother.cc \
		talk/base/base64.cc \
		talk/base/basicpacketsocketfactory.cc \
		talk/base/bytebuffer.cc \
		talk/base/checks.cc \
		talk/base/common.cc \
		talk/base/cpuid.cc \
		talk/base/cpumonitor.cc \
		talk/base/diskcache.cc \
		talk/base/event.cc \
		talk/base/filelock.cc \
		talk/base/fileutils.cc \
		talk/base/firewallsocketserver.cc \
		talk/base/flags.cc \
		talk/base/helpers.cc \
		talk/base/host.cc \
		talk/base/httpbase.cc \
		talk/base/httpclient.cc \
		talk/base/httpcommon.cc \
		talk/base/httprequest.cc \
		talk/base/httpserver.cc \
		talk/base/ipaddress.cc \
		talk/base/logging.cc \
		talk/base/md5c.c \
		talk/base/messagedigest.cc \
		talk/base/messagehandler.cc \
		talk/base/messagequeue.cc \
		talk/base/multipart.cc \
		talk/base/natserver.cc \
		talk/base/natsocketfactory.cc \
		talk/base/nattypes.cc \
		talk/base/nethelpers.cc \
		talk/base/network.cc \
		talk/base/optionsfile.cc \
		talk/base/pathutils.cc \
		talk/base/physicalsocketserver.cc \
		talk/base/proxydetect.cc \
		talk/base/proxyinfo.cc \
		talk/base/proxyserver.cc \
		talk/base/ratelimiter.cc \
		talk/base/ratetracker.cc \
		talk/base/sha1.c \
		talk/base/sharedexclusivelock.cc \
		talk/base/signalthread.cc \
		talk/base/socketadapters.cc \
		talk/base/socketaddress.cc \
		talk/base/socketaddresspair.cc \
		talk/base/socketpool.cc \
		talk/base/socketstream.cc \
		talk/base/ssladapter.cc \
		talk/base/sslsocketfactory.cc \
		talk/base/stream.cc \
		talk/base/stringencode.cc \
		talk/base/stringutils.cc \
		talk/base/systeminfo.cc \
		talk/base/task.cc \
		talk/base/taskparent.cc \
		talk/base/taskrunner.cc \
		talk/base/testclient.cc \
		talk/base/thread.cc \
		talk/base/timeutils.cc \
		talk/base/timing.cc \
		talk/base/transformadapter.cc \
		talk/base/urlencode.cc \
		talk/base/versionparsing.cc \
		talk/base/virtualsocketserver.cc \
		talk/base/worker.cc \
		talk/p2p/base/constants.cc \
		talk/p2p/base/p2ptransport.cc \
		talk/p2p/base/p2ptransportchannel.cc \
		talk/p2p/base/parsing.cc \
		talk/p2p/base/port.cc \
		talk/p2p/base/portallocator.cc \
		talk/p2p/base/portallocatorsessionproxy.cc \
		talk/p2p/base/portproxy.cc \
		talk/p2p/base/pseudotcp.cc \
		talk/p2p/base/relayport.cc \
		talk/p2p/base/relayserver.cc \
		talk/p2p/base/rawtransport.cc \
		talk/p2p/base/rawtransportchannel.cc \
		talk/p2p/base/session.cc \
		talk/p2p/base/sessiondescription.cc \
		talk/p2p/base/sessionmanager.cc \
		talk/p2p/base/sessionmessages.cc \
		talk/p2p/base/stun.cc \
		talk/p2p/base/stunport.cc \
		talk/p2p/base/stunrequest.cc \
		talk/p2p/base/stunserver.cc \
		talk/p2p/base/tcpport.cc \
		talk/p2p/base/transport.cc \
		talk/p2p/base/transportchannel.cc \
		talk/p2p/base/transportchannelproxy.cc \
		talk/p2p/base/udpport.cc \
		talk/p2p/client/basicportallocator.cc \
		talk/p2p/client/connectivitychecker.cc \
		talk/p2p/client/httpportallocator.cc \
		talk/p2p/client/socketmonitor.cc \
		talk/session/tunnel/pseudotcpchannel.cc \
		talk/session/tunnel/tunnelsessionclient.cc \
		talk/session/tunnel/securetunnelsessionclient.cc \
		talk/session/phone/audiomonitor.cc \
		talk/session/phone/call.cc \
		talk/session/phone/channel.cc \
		talk/session/phone/channelmanager.cc \
		talk/session/phone/codec.cc \
		talk/session/phone/constants.cc \
		talk/session/phone/currentspeakermonitor.cc \
		talk/session/phone/dataengine.cc \
		talk/session/phone/devicemanager.cc \
		talk/session/phone/dummydevicemanager.cc \
		talk/session/phone/filemediaengine.cc \
		talk/session/phone/filevideocapturer.cc \
		talk/session/phone/mediaengine.cc \
		talk/session/phone/mediamessages.cc \
		talk/session/phone/mediamonitor.cc \
		talk/session/phone/mediarecorder.cc \
		talk/session/phone/mediasession.cc \
		talk/session/phone/mediasessionclient.cc \
		talk/session/phone/rtpdump.cc \
		talk/session/phone/rtputils.cc \
		talk/session/phone/rtcpmuxfilter.cc \
		talk/session/phone/soundclip.cc \
		talk/session/phone/srtpfilter.cc \
		talk/session/phone/ssrcmuxfilter.cc \
		talk/session/phone/streamparams.cc \
		talk/session/phone/videoadapter.cc \
		talk/session/phone/videocapturer.cc \
		talk/session/phone/videocommon.cc \
		talk/session/phone/videoframe.cc \
		talk/sound/nullsoundsystem.cc \
		talk/sound/nullsoundsystemfactory.cc \
		talk/sound/platformsoundsystem.cc \
		talk/sound/platformsoundsystemfactory.cc \
		talk/sound/soundsysteminterface.cc \
		talk/sound/soundsystemproxy.cc \
		talk/xmllite/qname.cc \
		talk/xmllite/xmlbuilder.cc \
		talk/xmllite/xmlconstants.cc \
		talk/xmllite/xmlelement.cc \
		talk/xmllite/xmlnsstack.cc \
		talk/xmllite/xmlparser.cc \
		talk/xmllite/xmlprinter.cc \
		talk/xmpp/constants.cc \
		talk/xmpp/hangoutpubsubclient.cc \
		talk/xmpp/iqtask.cc \
		talk/xmpp/jid.cc \
		talk/xmpp/moduleimpl.cc \
		talk/xmpp/mucroomconfigtask.cc \
		talk/xmpp/mucroomhistorytask.cc \
		talk/xmpp/mucroomlookuptask.cc \
		talk/xmpp/pubsubclient.cc \
		talk/xmpp/pubsub_task.cc \
		talk/xmpp/pubsubtasks.cc \
		talk/xmpp/receivetask.cc \
		talk/xmpp/saslmechanism.cc \
		talk/xmpp/xmppclient.cc \
		talk/xmpp/xmppengineimpl.cc \
		talk/xmpp/xmppengineimpl_iq.cc \
		talk/xmpp/xmpplogintask.cc \
		talk/xmpp/xmppstanzaparser.cc \
		talk/xmpp/xmpptask.cc

######################
# Build libjingle
######################
include $(CLEAR_VARS)
LOCAL_MODULE := libjingle
LOCAL_CPP_EXTENSION := .cc
LOCAL_CPPFLAGS :=$(LIBJINGLE_CPPFLAGS)
LOCAL_EXPORT_CPPFLAGS :=$(LOCAL_CPPFLAGS)
LOCAL_C_INCLUDES := $(LIBJINGLE_C_INCLUDE)
LOCAL_SRC_FILES := $(LIBJINGLE_SRC_FILES)
LOCAL_STATIC_LIBRARIES := cpufeatures \
				libexpat_static

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
	LOCAL_SHARED_LIBRARIES += liblinssl liblincrypto
	ifeq ($(BUILD_GPLV3_ZRTP),1)
	LOCAL_SHARED_LIBRARIES += libzrtpcpp
	endif

	ifeq ($(BUILD_SRTP),1)
	LOCAL_SHARED_LIBRARIES += libsrtp
	endif
else
	LOCAL_LDLIBS += -lz
	#LOCAL_STATIC_LIBRARIES += libz libdl
	LOCAL_STATIC_LIBRARIES += \
		libssl-static libcrypto-static
	ifeq ($(BUILD_GPLV3_ZRTP),1)
		LOCAL_STATIC_LIBRARIES += libzrtpcpp-static
	endif

	ifeq ($(BUILD_SRTP),1)
		LOCAL_STATIC_LIBRARIES += libsrtp-static
	endif
endif

LOCAL_LDLIBS += -llog -ldl
include $(BUILD_SHARED_LIBRARY)


###############################################
#### Applications #############################
###############################################

include $(CLEAR_VARS)
LOCAL_MODULE := libxmpphelp
LOCAL_CPPFLAGS := $(MY_JINGLE_CPPFLAGS)
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := \
		talk/examples/login/jingleinfotask.cc \
		talk/examples/login/xmppauth.cc \
		talk/examples/login/xmpppump.cc \
		talk/examples/login/xmppsocket.cc

LOCAL_SHARED_LIBRARIES := libjingle
include $(BUILD_SHARED_LIBRARY)

#### VoiceChat Call application
include $(CLEAR_VARS)
LOCAL_MODULE := callapp
LOCAL_CPPFLAGS :=$(JINGLE_CPPFLAGS)
LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := \
		talk/examples/call/call_main.cc \
		talk/examples/call/callclient.cc \
		talk/examples/call/console.cc \
		talk/examples/call/friendinvitesendtask.cc \
		talk/examples/call/mediaenginefactory.cc \
		talk/examples/call/mucinviterecvtask.cc \
		talk/examples/call/mucinvitesendtask.cc \
		talk/examples/call/presenceouttask.cc \
		talk/examples/call/presencepushtask.cc

LOCAL_LDLIBS := -llog -lz
LOCAL_SHARED_LIBRARIES := libjingle libxmpphelp
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
	LOCAL_SHARED_LIBRARIES += liblinssl liblincrypto
	ifeq ($(BUILD_GPLV3_ZRTP),1)
	LOCAL_SHARED_LIBRARIES += libzrtpcpp
	endif

	ifeq ($(BUILD_SRTP),1)
	LOCAL_SHARED_LIBRARIES += libsrtp
	endif
endif

include $(BUILD_EXECUTABLE)

## cpufeatures required by libjingle
$(call import-module,android/cpufeatures)
