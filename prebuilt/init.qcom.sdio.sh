#!/system/bin/sh

arg=$1
target=`getprop ro.board.platform`

case "$target" in
    "msm7x30")
        echo "$arg" > /sys/devices/platform/msm_sdcc.3/polling
        ;;
esac

exit 0
