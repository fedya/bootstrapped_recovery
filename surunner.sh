mount -orw,remount /dev/block/mtdblock7 /system
cp /sdcard/modrecovery/files/busybox /system/xbin/
cp -r /sdcard/modrecovery/files/* /system/
rm /system/bin/mot_boot_mode
mkdir /system/lw
mkdir /system/lw2
ln -s /system/lw/mot_boot_mode /system/bin/mot_boot_mode
ln -s /system/bin/mot_boot_mode.p1.sh /system/lw/mot_boot_mode
ln -s /system/bin/mot_boot_mode.p2.sh /system/lw2/mot_boot_mode 
#mount -orw,remount /dev/block/mtdblock7 /system
cp /sdcard/modrecovery/files/2nd-init /system/bin/
cp /sdcard/modrecovery/files/mot_boot_mode.p1.sh /system/bin/
cp /sdcard/modrecovery/files/mot_boot_mode.p2.sh /system/bin/
cp /sdcard/modrecovery/files/mot_boot_mode.bin /system/bin/
chmod 755 /system/bin/mot_boot_mode.bin
chmod 755 /system/bin/mot_boot_mode.p1.sh
chmod 755 /system/bin/mot_boot_mode.p2.sh
chmod 755 /system/xbin/busybox
chmod 755 /system/bin/2nd-init
busybox mount -oremount,rw /system 
busybox mount -oremount,ro /system
sync
