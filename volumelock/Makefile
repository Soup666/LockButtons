include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = VolumeLock
VolumeLock_FILES = svlRootListController.m
VolumeLock_INSTALL_PATH = /Library/PreferenceBundles
VolumeLock_FRAMEWORKS = UIKit
VolumeLock_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/VolumeLock.plist$(ECHO_END)
