ARCHS = armv7 arm64
THEOS_BUILD_DIR = debs
THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

include theos/makefiles/common.mk

TWEAK_NAME = NoLaunchAlert
NoLaunchAlert_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
