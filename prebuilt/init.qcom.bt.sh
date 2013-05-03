#!/system/bin/sh

BLUETOOTH_SLEEP_PATH=/proc/bluetooth/sleep/proto
LOG_TAG="qcom-bluetooth"
LOG_NAME="${0}:"

hciattach_pid=""

loge ()
{
  /system/bin/log -t $LOG_TAG -p e "$LOG_NAME $@"
}

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

failed ()
{
  loge "$1: exit code $2"
  exit $2
}

start_hciattach ()
{
  /system/bin/brcm_patchram_plus --enable_hci --no2bytes --tosleep 50000 --baudrate 3000000 --use_baudrate_for_download --patchram /system/bin/BCM4330B1_002.001.003.0087.0000_TCL_Cocktail_TESTONLY.hcd /dev/ttyHS0 &
  hciattach_pid=$!
  logi "start_hciattach: pid = $hciattach_pid"
  echo 1 > $BLUETOOTH_SLEEP_PATH
}

kill_hciattach ()
{
  echo 0 > $BLUETOOTH_SLEEP_PATH
  logi "kill_hciattach: pid = $hciattach_pid"
  ## careful not to kill zero or null!
  kill -TERM $hciattach_pid
  # this shell doesn't exit now -- wait returns for normal exit
}

# mimic hciattach options parsing -- maybe a waste of effort
USAGE="hciattach [-n] [-p] [-b] [-t timeout] [-s initial_speed] <tty> <type | id> [speed] [flow|noflow] [bdaddr]"

while getopts "blnpt:s:" f
do
  case $f in
  b | l | n | p)  opt_flags="$opt_flags -$f" ;;
  t)      timeout=$OPTARG;;
  s)      initial_speed=$OPTARG;;
  \?)     echo $USAGE; exit 1;;
  esac
done
shift $(($OPTIND-1))

#Selectively Disable sleep
BOARD=`getprop ro.board.platform`

POWER_CLASS=`getprop qcom.bt.dev_power_class`

TRANSPORT=`getprop ro.qualcomm.bt.hci_transport`
logi "Transport : $TRANSPORT"

case $POWER_CLASS in
  1) PWR_CLASS="-p 0" ;
     logi "Power Class: 1";;
  2) PWR_CLASS="-p 1" ;
     logi "Power Class: 2";;
  3) PWR_CLASS="-p 2" ;
     logi "Power Class: CUSTOM";;
  *) PWR_CLASS="";
     logi "Power Class: Ignored. Default(1) used (1-CLASS1/2-CLASS2/3-CUSTOM)";
     logi "Power Class: To override, Before turning BT ON; setprop qcom.bt.dev_power_class <1 or 2 or 3>";;
esac

eval $(/system/bin/hci_qcomm_init -e $PWR_CLASS && echo "exit_code_hci_qcomm_init=0" || echo "exit_code_hci_qcomm_init=1")

trap "kill_hciattach" TERM INT

case $TRANSPORT in
    "smd")
        echo 1 > /sys/module/hci_smd/parameters/hcismd_set
     ;;
     *)
        logi "start hciattach"
        start_hciattach

        wait $hciattach_pid
        logi "Bluetooth stopped"
     ;;
esac

exit 0 
