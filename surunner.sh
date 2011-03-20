#!/system/xbin/busybox sh
mount -oremount,rw /dev/block/mtdblock7 /system
cp -r /sdcard/modrecovery/files/busybox /system/xbin/
cp -r /sdcard/modrecovery/files/ramdisk.tar /system/
cp -r /sdcard/modrecovery/files/2nd-init /system/
cp -r /sdcard/modrecovery/files/mot_boot_mode.bin /system/
cp -r /sdcard/modrecovery/files/mot_boot_mode.p1.sh /system/
cp -r /sdcard/modrecovery/files/mot_boot_mode.p2.sh /system/
rm /system/bin/mot_boot_mode
mkdir /system/lw
mkdir /system/lw2
ln -s /system/lw/mot_boot_mode /system/bin/mot_boot_mode
ln -s /system/bin/mot_boot_mode.p1.sh /system/lw/mot_boot_mode
ln -s /system/bin/mot_boot_mode.p2.sh /system/lw2/mot_boot_mode
chmod 755 /system/bin/mot_boot_mode.bin
chmod 755 /system/bin/mot_boot_mode.p1.sh
chmod 755 /system/bin/mot_boot_mode.p2.sh
chmod 755 /system/xbin/busybox
chown shell /system/xbin/busybox
chmod 755 /system/bin/2nd-init
/system/xbin//busybox mount -oremount,ro /system
sync
