SONYDOLBY_PATH := hardware/sony/dolby

PRODUCT_SOONG_NAMESPACES += $(SONYDOLBY_PATH)

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Exclude AOSP AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(SONYDOLBY_PATH)/sepolicy/vendor

# HIDL
DEVICE_MANIFEST_FILE += $(SONYDOLBY_PATH)/configs/vendor.dolby.hardware.dms.xml

# Configs
PRODUCT_COPY_FILES += \
	$(SONYDOLBY_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
	$(SONYDOLBY_PATH)/configs/dolby/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

# Dolby properties
PRODUCT_VENDOR_PROPERTIES += \
	vendor.audio.dolby.ds2.enabled=false \
	vendor.audio.dolby.ds2.hardbypass=false \
	ro.feature.dolby_enable=true \
	ro.audio.monitorRotation=true \
	ro.vendor.sony.effect.dolby_atmos=true \
	ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1

# Dolby Applications
PRODUCT_PACKAGES += \
	daxService \
	DaxUI \
	DolbySound

# Proprietary blobs
PRODUCT_PACKAGES += \
	$(SONYDOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxappui.xml \
	$(SONYDOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
	$(SONYDOLBY_PATH)/proprietary/system_ext/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/hiddenapi-com.dolby.daxservice.xml \
	$(SONYDOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxappui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxappui.xml \
	$(SONYDOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
	$(SONYDOLBY_PATH)/proprietary/system_ext/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.dolby.hardware.dms@2.0.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
	$(SONYDOLBY_PATH)/proprietary/vendor/bin/hw/vendor.dolby.media.c2@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.media.c2@1.0-service \
	$(SONYDOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
	$(SONYDOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.media.c2@1.0-service.rc \
	$(SONYDOLBY_PATH)/proprietary/vendor/etc/vintf/manifest/vendor.dolby.hardware.dms.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest/vendor.dolby.hardware.dms.xml \
	$(SONYDOLBY_PATH)/proprietary/vendor/etc/vintf/manifest/vendor.dolby.media.c2@1.0-service.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest/vendor.dolby.media.c2@1.0-service.xml \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib/soundfx/libeffectproxy.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libeffectproxy.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswvqe.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/libcodec2_soft_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_soft_dolby.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/libcodec2_store_dolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libcodec2_store_dolby.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/soundfx/libeffectproxy.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libeffectproxy.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswvqe.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
	$(SONYDOLBY_PATH)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so