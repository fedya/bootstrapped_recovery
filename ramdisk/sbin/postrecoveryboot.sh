#!/sbin/sh

sleep 1

for i in $(seq 1 10)
do
    TMP=$(mount | grep /tmp)
    if [ -z "$TMP" ]
    then
        break
    fi
    umount -l /tmp
    sleep 1
done

rm -r /tmp
mkdir -p tmp
rm sdcard
mkdir sdcard

touch /tmp/recovery.log
sync

# /sbin/recovery &
