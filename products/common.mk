# Generic product
PRODUCT_NAME := vanir
PRODUCT_BRAND := vanir
PRODUCT_DEVICE := generic

# Build Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Hydra.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg \
    ro.modversion=Vanir-$(shell date +"%m-%d-%Y") 

# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=300 \
    net.bt.name=Android \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.heapstartsize=48m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-flags=v=a,o=v,u=y,m=y \
    dalvik.vm.lockprof.threshold=75 \
    dalvik.vm.verify-bytecode=false \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
    ro.gsm.data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.gsm.2nd_data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    ro.ril.enable.3g.prefix=1 \
    ro.ril.hep=1 \
    ro.ril.hsxpa=2 \
    ro.ril.enable.dtm=1 \
    ro.ril.gprsclass=12 \
    ro.ril.hsdpa.category=8 \
    ro.ril.enable.a53=1 \
    ro.ril.hsupa.category=5 \
    net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960  \
    net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960 \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    persist.sys.purgeable_assets=1 \
    windowsmgr.max_events_per_sec=280 \
    pm.sleep_mode=1 \
    ro.HOME_APP_ADJ=1 \
    persist.sys.use_dithering=0 \
    ro.ril.disable.power.collapse=0 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.config.nocheckin=1 \
    ro.mot.eri.losalert.delay=1000 \
    ro.config.vc_call_vol_steps=42 \
    ring.delay=0 \
    ro.telephony.call_ring.delay=500 \
    ro.lge.proximity.delay=20 \
    mot.proximity.delay=20 \
    ro.config.hwfeature_wakeupkey=0 \
    ro.ext4fs=1 \
    debug.composition.type=gpu \
    ro.mot.eri.losalert.delay=900 \
    ro.ril.fast.dormancy.rule=0 \
    ro.HOME_APP_MEM=8192 \
    ro.FOREGROUND_APP_MEM=6144 \
    ro.VISIBLE_APP_MEM=8192 \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=10000 \
    movfilter=40 \
    move hyst=0 \
    per_sec=300 \
    TCHTHR=28 \
    ro.semc.xloud.supported=true \
    persist.service.xloud.enable=1 \
    ro.semc.sound_effects_enabled=true \
    ro.service.swiqi.supported=true \
    persist.service.swiqi.enable=1

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JRN84D BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/vanir/proprietary/common/xbin/busybox:system/xbin/busybox \
    vendor/vanir/proprietary/common/xbin/su:system/xbin/su \
    vendor/vanir/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/vanir/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/vanir/proprietary/common/xbin/bash:system/xbin/bash \
    vendor/vanir/proprietary/common/xbin/crond:system/xbin/crond \
    vendor/vanir/proprietary/common/xbin/crontab:system/xbin/crontab \
    vendor/vanir/proprietary/common/xbin/nano:system/xbin/nano \
    vendor/vanir/proprietary/common/xbin/openvpn:system/xbin/openvpn \
    vendor/vanir/proprietary/common/xbin/popcorn:system/xbin/popcorn \
    vendor/vanir/proprietary/common/xbin/popcorn_blx:system/xbin/popcorn_blx \
    vendor/vanir/proprietary/common/xbin/popcorn_cc:system/xbin/popcorn_cc \
    vendor/vanir/proprietary/common/xbin/popcorn_cc1:system/xbin/popcorn_cc1 \
    vendor/vanir/proprietary/common/xbin/popcorn_cc2:system/xbin/popcorn_cc2 \
    vendor/vanir/proprietary/common/xbin/popcorn_cc3:system/xbin/popcorn_cc3 \
    vendor/vanir/proprietary/common/xbin/popcorn_fc:system/xbin/popcorn_fc \
    vendor/vanir/proprietary/common/xbin/popcorn_govs:system/xbin/popcorn_govs \
    vendor/vanir/proprietary/common/xbin/popcorn_gpu:system/xbin/popcorn_gpu \
    vendor/vanir/proprietary/common/xbin/popcorn_hotplug:system/xbin/popcorn_hotplug \
    vendor/vanir/proprietary/common/xbin/popcorn_oc:system/xbin/popcorn_oc \
    vendor/vanir/proprietary/common/xbin/popcorn_sc:system/xbin/popcorn_sc \
    vendor/vanir/proprietary/common/xbin/popcorn_sr:system/xbin/popcorn_sr \
    vendor/vanir/proprietary/common/xbin/popcorn_tw:system/xbin/popcorn_tw \
    vendor/vanir/proprietary/common/xbin/popcorn_tw1:system/xbin/popcorn_tw1 \
    vendor/vanir/proprietary/common/xbin/popcorn_wll:system/xbin/popcorn_wll \
    vendor/vanir/proprietary/common/xbin/run-parts:system/xbin/run-parts \
    vendor/vanir/proprietary/common/xbin/scp:system/xbin/scp \
    vendor/vanir/proprietary/common/xbin/sh:system/xbin/sh \
    vendor/vanir/proprietary/common/xbin/ssh:system/xbin/ssh \
    vendor/vanir/proprietary/common/xbin/zipalign:system/xbin/zipalign

# Misc Files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/hosts:system/etc/hosts \
    vendor/vanir/proprietary/common/etc/resolv.conf:system/etc/resolv.conf 

# Data Files
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/common/data/cron/root:data/cron/root \
    vendor/vanir/proprietary/common/data/data/com.android.settings/shared_prefs:data/data/com.android.settings/shared_prefs

# init.d Tweaks
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/vanir/proprietary/common/etc/init.d/01self-destruct:system/etc/init.d/01self-destruct \
    vendor/vanir/proprietary/common/etc/init.d/98SONIC_SHOCK:system/etc/init.d/98SONIC_SHOCK \
    vendor/vanir/proprietary/common/etc/init.d/99sonic:system/etc/init.d/99sonic

# Audio Packages
include frameworks/base/data/sounds/AudioPackage7.mk

# Included apps
PRODUCT_PACKAGES += \
    SpeakerProximity
