#!/bin/fish
# gtf 2160 1080 60
# gtf 1280 720 60
# gtf 1920 1080 60
# sleep 2
# xrandr --newmode "2160x1080_60.00"  194.26  2160 2296 2528 2896  1080 1081 1084 1118  -HSync +Vsync
# xrandr --newmode "1280x720_60.00" 74.48 1280 1336 1472 1664 720 721 724 746 -HSync +Vsync
#xrandr --newmode "1648x928_60.00"  126.39  1648 1744 1920 2192  928 929 932 961  -HSync +Vsync
xrandr --newmode "1600x900_60.00"  119.00  1600 1696 1864 2128  900 901 904 932  -HSync +Vsync


# xrandr --addmode VGA1 2160x1080_60.00
# xrandr --addmode VGA1 1280x720_60.00
#xrandr --addmode VGA1 1648x928_60.00
xrandr --addmode VGA1 1600x900_60.00


# xrandr --output VGA1 --mode 2160x1080_60.00 --right-of LVDS1
# xrandr --output VGA1 --mode 1280x720_60.00 --right-of LVDS1
#xrandr --output VGA1 --mode 1648x928_60.00 --right-of LVDS1
xrandr --output VGA1 --mode 1600x900_60.00 --right-of LVDS1
#
# x11vnc -clip 2160x1080+0+0 -ncache 10
# x11vnc -clip 1280x720+0+0
#x11vnc -clip 1648x928+0+0
x11vnc -clip 1600x900+0+0


echo  "VNC TERMINATED, Though the monitor is persistent untill reboot. :)"
