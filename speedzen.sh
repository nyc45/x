#!/bin/bash
./speedtest-cli --share >speed.txt
#./speedtest-cli --share | tee >(zenity --text-info --width 670 --height 300) >speed.txt
img=`grep -io 'http://www.speedtest.net/result/[a-z0-9.,-+]*[.png]' speed.txt`
#wget -O speed.png $img
#zenity --text-info --title="SpeedTest" --width 300 --height 200 --html --url="$img"
eog -f $img &
