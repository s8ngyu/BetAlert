ARCHS = armv7s armv7 arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BetAlert
BetAlert_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
