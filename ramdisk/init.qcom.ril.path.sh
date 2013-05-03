#!/system/bin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH
buildid=`cat /sys/devices/system/soc/soc0/build_id`
offset=17
length=1
isrpc=0
modemid=${buildid:$offset:$length}
if [ "$modemid" = "$isrpc" ]; then
    setprop rild.libpath "/system/lib/libril-qc-1.so"
    restart ril-daemon
fi
