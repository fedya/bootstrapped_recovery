#!/system/xbin/busybox sh
export PATH=/system/bin:/system/xbin:/sbin
mount /dev/block/mmcblk0p1 /sdcard
if [ -e /sdcard/adb_bootup ] ; then
   [[ -e /sdcard/sdcard_bootup ]] && /system/xbin/busybox echo /dev/block/mmcblk0p1 >/sys/devices/platform/usb_mass_storage/lun0/file
   /system/xbin/busybox echo msc_adb >/dev/usb_device_mode
	 /sbin/adbd &
  /system/xbin/busybox sleep 10
fi
if [ -e /data/.recovery_mode ] ; then
   rm /data/.recovery_mode ; sync
   umount /sdcard
   mount -orw,remount /
	 mkdir /tmp
   mount tmpfs /tmp
   chmod -R 777 /tmp
	 mkdir /cache
	 mount /dev/block/cache /cache
	 chmod -R 777 /cache
   mkdir -p /sd-ext
   rm /cache/recovery/command
   rm /cache/update.zip
   touch /tmp/.ignorebootmessage 
   cd /sbin
   ln -s /sbin/busybox [
   ln -s /sbin/busybox [[
   ln -s /sbin/recovery amend
   ln -s /sbin/busybox ash
   ln -s /sbin/busybox awk
   ln -s /sbin/busybox basename
	 ln -s /sbin/busybox bbconfig
   ln -s /sbin/busybox bunzip2
   ln -s /sbin/recovery busybox
   ln -s /sbin/busybox bzcat
   ln -s /sbin/busybox bzip2
   ln -s /sbin/busybox cal
   ln -s /sbin/busybox cat
   ln -s /sbin/busybox catv
   ln -s /sbin/busybox chgrp
   ln -s /sbin/busybox chmod
   ln -s /sbin/busybox chown
   ln -s /sbin/busybox chroot
   ln -s /sbin/busybox cksum
   ln -s /sbin/busybox clear
   ln -s /sbin/busybox cmp
   ln -s /sbin/busybox cp
   ln -s /sbin/busybox cpio
   ln -s /sbin/busybox cut
   ln -s /sbin/busybox date
   ln -s /sbin/busybox dc
   ln -s /sbin/busybox dd
   ln -s /sbin/busybox depmod
   ln -s /sbin/busybox devmem
   ln -s /sbin/busybox df
   ln -s /sbin/busybox diff
   ln -s /sbin/busybox dirname
   ln -s /sbin/busybox dmesg
   ln -s /sbin/busybox dos2unix
   ln -s /sbin/busybox du
   ln -s /sbin/recovery dump_image
   ln -s /sbin/busybox echo
   ln -s /sbin/busybox egrep
   ln -s /sbin/busybox env
   ln -s /sbin/recovery erase_image
   ln -s /sbin/busybox expr
   ln -s /sbin/busybox false
   ln -s /sbin/busybox fdisk
   ln -s /sbin/busybox fgrep
   ln -s /sbin/busybox find
   ln -s /sbin/recovery flash_image
   ln -s /sbin/busybox fold
   ln -s /sbin/busybox free
   ln -s /sbin/busybox freeramdisk
   ln -s /sbin/busybox fuser
   ln -s /sbin/busybox getopt
   ln -s /sbin/busybox grep
   ln -s /sbin/busybox gunzip
   ln -s /sbin/busybox gzip
   ln -s /sbin/busybox head
   ln -s /sbin/busybox hexdump
   ln -s /sbin/busybox id
   ln -s /sbin/busybox insmod
   ln -s /sbin/busybox install
   ln -s /sbin/busybox kill
   ln -s /sbin/busybox killall
   ln -s /sbin/busybox killall5
   ln -s /sbin/busybox length
   ln -s /sbin/busybox less
   ln -s /sbin/busybox ln
   ln -s /sbin/busybox losetup
   ln -s /sbin/busybox ls
   ln -s /sbin/busybox lsmod
   ln -s /sbin/busybox lspci
   ln -s /sbin/busybox lsusb
   ln -s /sbin/busybox lzop
   ln -s /sbin/busybox lzopcat
   ln -s /sbin/busybox md5sum
   ln -s /sbin/busybox mkdir
   ln -s /sbin/busybox mke2fs
   ln -s /sbin/busybox mkfifo
   ln -s /sbin/busybox mkfs.ext2
   ln -s /sbin/busybox mknod
   ln -s /sbin/busybox mkswap
   ln -s /sbin/busybox mktemp
   ln -s /sbin/recovery mkyaffs2image
   ln -s /sbin/busybox modprope
   ln -s /sbin/busybox more
   ln -s /sbin/busybox mount
   ln -s /sbin/busybox mountpoint
   ln -s /sbin/busybox mv
   ln -s /sbin/recovery nandroid
   ln -s /sbin/busybox nice
   ln -s /sbin/busybox nohup
   ln -s /sbin/busybox od
   ln -s /sbin/busybox patch
   ln -s /sbin/busybox pgrep
   ln -s /sbin/busybox pidof
   ln -s /sbin/busybox pkill
   ln -s /sbin/busybox printenv
   ln -s /sbin/busybox printf
   ln -s /sbin/busybox ps
   ln -s /sbin/busybox pwd
   ln -s /sbin/busybox rdev
   ln -s /sbin/busybox readlink
   ln -s /sbin/busybox realpath
   ln -s /sbin/recovery reboot
   ln -s /sbin/busybox renice
   ln -s /sbin/busybox reset
   ln -s /sbin/busybox rm
   ln -s /sbin/busybox rmdir
   ln -s /sbin/busybox rmmod
   ln -s /sbin/busybox run-parts
   ln -s /sbin/busybox sed
   ln -s /sbin/busybox seq
   ln -s /sbin/busybox setsid
   ln -s /system/xbin/busybox sh
   ln -s /sbin/busybox sha1sum
   ln -s /sbin/busybox sha256sum
   ln -s /sbin/busybox sha512sum
   ln -s /sbin/busybox sleep
   ln -s /sbin/busybox sort
   ln -s /sbin/busybox split
   ln -s /sbin/busybox stat
   ln -s /sbin/busybox strings
   ln -s /sbin/busybox stty
   ln -s /sbin/busybox swapoff
   ln -s /sbin/busybox swapon
   ln -s /sbin/busybox sync
   ln -s /sbin/busybox sysctl
   ln -s /sbin/busybox tac
   ln -s /sbin/busybox tail
   ln -s /sbin/busybox tar
   ln -s /sbin/busybox tee
   ln -s /sbin/busybox test
   ln -s /sbin/busybox time
   ln -s /sbin/busybox top
   ln -s /sbin/busybox touch
   ln -s /sbin/busybox tr
   ln -s /sbin/busybox true
   ln -s /sbin/busybox tty
   ln -s /sbin/busybox tune2fs
   ln -s /sbin/busybox umount
   ln -s /sbin/busybox uniq
   ln -s /sbin/busybox unix2dos
   ln -s /sbin/busybox unlzop
   ln -s /sbin/recovery unyaffs
   ln -s /sbin/busybox unzip
   ln -s /sbin/busybox uptime
   ln -s /sbin/busybox usleep
   ln -s /sbin/busybox uudecode
   ln -s /sbin/busybox uuencode
   ln -s /sbin/busybox watch
   ln -s /sbin/busybox wc
   ln -s /sbin/busybox which
   ln -s /sbin/busybox whoami
   ln -s /sbin/busybox xargs
   ln -s /sbin/busybox yes
   ln -s /sbin/busybox zcat
   cd /
	 umount /system/lw
	 umount /system/lw
	 mount -orw,remount /
	 mkdir /etc
   cd /cache
   /system/xbin/busybox sleep 50000 &
   cd /
   /sbin/recovery &
	 cd /data
   /system/xbin/busybox sleep 50000
fi
umount /sdcard
/system/bin/mot_boot_mode.bin
