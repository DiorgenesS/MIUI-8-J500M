#
# Makefile for Galaxy J5 (J500 M)
#

PORT_PRODUCT = j5lteub_global

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_J5.zip

# The location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars := 

# All apks from MIUI
local-miui-removed-apps := BugReport Email FM GameCenter MiGameCenterSDKService MiLivetalk Mipay MiuiSuperMarket MiuiVideo MiuiVoip OneTimeInitializer PaymentService PersonalAssistant QuickSearchBox SogouInput SystemAdSolution VoiceAssist XiaomiVip XMPass YellowPage

local-miui-modified-apps := MiuiSystemUI SecurityCenter Settings

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

# All apps need to be removed from original ZIP file
local-remove-apps   := 

include phoneapps.mk

# The certificate for release version
local-certificate-dir := security

local-target-bit := 32

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	@echo goodbye! miui prebuilt binaries!
	$(hide) rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	$(hide) cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
	@echo remove unnecessary lib64 miui!
	$(hide) rm -rf $(ZIP_DIR)/system/lib64
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libapssdk.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libautotoucher.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libBankCardRecognizer.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libbigo265mobile_nmob.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libconnectionbase.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libDecRes_sdk.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libdidi_secure.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libfamily_jni.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libgnustl_yynmob.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libidcardquality_v1.0.3.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libJeejenAisound.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libjeejenmsc.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libminivenus.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libmresearch.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libnmob_audiosdk.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libnmob_commonlib.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libnmob_newaudio.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libnmob_newvideo.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libnmob_util.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libnmob_videosdk.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libpatcher_game_jni.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libsmejni.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libwebp.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libweibosdkcore.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libweibosdkcore_sogou.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/libxmpass_sdk_patcher.so
	$(hide) rm -rf $(ZIP_DIR)/system/lib/xmpass_libweibosdkcore.so
	$(hide) cp -rf stockrom/system/lib64 $(ZIP_DIR)/system
	@echo remove unnecessary files!
	$(hide) rm -rf $(ZIP_DIR)/data/miui/app/*
	$(hide) rm -rf $(ZIP_DIR)/data/miui/videoplugins
	$(hide) rm -rf $(ZIP_DIR)/data/miui/yellowpage
	$(hide) rm -rf $(ZIP_DIR)/data/miui/cdrom_install.iso
	$(hide) rm -rf $(ZIP_DIR)/data/miui/cts.prop
	$(hide) rm -rf $(ZIP_DIR)/data/miui/resolves_miui.conf
	$(hide) rm -rf $(ZIP_DIR)/system/etc/init.miui.rc
	$(hide) rm -rf $(ZIP_DIR)/system/recovery-from-boot.bak
	$(hide) rm -rf $(ZIP_DIR)/system/lib/modules/pronto/pronto_wlan.ko
	$(hide) rm -rf $(ZIP_DIR)/system/lib/modules/radio-iris-transport.ko
	@echo copying files!
	$(hide) cp -rf other/system $(ZIP_DIR)/
