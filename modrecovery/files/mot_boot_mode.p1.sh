#!/system/xbin/busybox sh
/system/xbin/busybox mount -oremount,rw rootfs /
/system/xbin/busybox tar xf /system/ramdisk.tar -C /
/system/xbin/busybox chmod 666 /dev/usb_device_mode
/system/xbin/busybox mount -obind /system/lw2 /system/lw
/system/xbin/bash /etc/init.d/06tweaks
/system/bin/2nd-init
