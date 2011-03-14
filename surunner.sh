#!/system/xbin/busybox sh
/system/xbin/busybox mount -orw,remount /system
cp -r /sdcard/modrecovery/files/* /system/
rm /system/bin/mot_boot_mode
mkdir /system/lw
mkdir /system/lw2
ln -s /system/lw/mot_boot_mode /system/bin/mot_boot_mode
ln -s /system/bin/mot_boot_mode.p1.sh /system/lw/mot_boot_mode
ln -s /system/bin/mot_boot_mode.p2.sh /system/lw2/mot_boot_mode
/system/xbin/busybox mount -orw,remount /system
chmod 755 /system/bin/mot_boot_mode.bin
chmod 755 /system/bin/mot_boot_mode.p1.sh
chmod 755 /system/bin/mot_boot_mode.p2.sh
chmod 755 /system/xbin/busybox
chmod 755 /system/bin/2nd-init
/system/xbin/busybox mount -oremount,rw /system
/system/xbin//busybox mount -oremount,ro /system
sync
