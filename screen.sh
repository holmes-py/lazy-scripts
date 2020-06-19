
#!/bin/fish
echo "This would take 10 seconds, Make sure adb is connected."
adb devices
sleep 1
adb reverse tcp:5900 tcp:5900
sleep 1

gtf 2160 1080 60
# gtf 1280 720 60
sleep 2
xrandr --newmode "2160x1080_60.00"  194.26  2160 2296 2528 2896  1080 1081 1084 1118  -HSync +Vsync
# xrandr --newmode "1280x720_60.00" 74.48 1280 1336 1472 1664 720 721 724 746 -HSync +Vsync
# xrandr --newmode  Modeline "2160x1080_60.00" 194.26 2160 2296 2528 2896 1080 1081 1084 1118 -HSync +Vsync

sleep 2
xrandr --addmode HDMI1 2160x1080_60.00
# xrandr --addmode HDMI1 1280x720_60.00
sleep 2
xrandr --output HDMI1 --mode 2160x1080_60.00 --left-of LVDS1
# xrandr --output HDMI1 --mode 1280x720_60.00 --left-of LVDS1
sleep 2
x11vnc -clip 2160x1080+0+0 -ncache 10
# x11vnc -clip 1280x720+0+0
echo  "VNC TERMINATED, Though the monitor is persistent untill reboot. :)"
