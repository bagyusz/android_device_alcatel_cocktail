#!/bin/bash
# Add ~/bin to path
export PATH=$PATH:~/bin

NumThreads=`grep 'processor' /proc/cpuinfo | wc -l`

echo ""
echo ""
echo "CM10 build script by bagyusz"
echo ""
echo "1) Sync"
echo "2) Make"
echo "3) Make Clean"
echo ""
echo -n "Select Option: "
read option
echo ""
echo ""

case  $option in
  1)
    echo "Starting sync"
    cd cm10
    repo sync -j$NumThreads
    ;;
  2)
    cd cm10
    echo "Making Bacon"
    . build/envsetup.sh && breakfast cm_cocktail-userdebug && make -j$NumThreads otapackage > buildlog.log 2>&1
    ;;

  3)
    cd cm10
    echo "Making Clean"
    . build/envsetup.sh && lunch cm_cocktail-userdebug && make clean -j$NumThreads
    ;;
  *)
    echo "Error: not defined!"
esac
echo ""
echo ""
