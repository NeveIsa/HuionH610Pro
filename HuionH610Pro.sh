# https://github.com/DIGImend/digimend-kernel-drivers/issues/26

devname="HUION Huion Tablet Pad pad"

xsetwacom --set "$devname" Button 1 "key +ctrl +z -z -ctrl"
xsetwacom --set "$devname" Button 2 "key e"
xsetwacom --set "$devname" Button 3 "key +ctrl"
xsetwacom --set "$devname" Button 8 "key +shift"
xsetwacom --set "$devname" Button 9 "key +ctrl +  -ctrl"
xsetwacom --set "$devname" Button 10 "key +ctrl -  -ctrl"
xsetwacom --set "$devname" Button 11 "key b"
xsetwacom --set "$devname" Button 12 "key space"



devname="HUION Huion Tablet Pen stylus"
# eg. if you want an eraser on your Stylus, you can sacrifice the middle-click on button 2 by inputing:
xsetwacom --set "$devname" Button 2 "key +ctrl +z -z -ctrl"
# (if you want to revert back to default:)
# xsetwacom --set $devname Button 2 "button +2"


devname="HUION Huion Tablet Pad pad"
devname="HUION Huion Tablet Pen stylus"

# "HUION PenTablet Pen" - type xinput into terminal and look for each device relevant to your tablet, replace this if it doesn't work and go through each different option shown in xinput.
# W - Division of the width of the tablet. 2 = half, 1 = full area. 1.5 = 3/4 of the area
# X - the invert X value. 1 = left side, -1 = right hand side. -0.5 = half way
# H - Division of the height of the tablet. 2 = half, 1 = full area. 1.5 = 3/4 of the area
# Y - Inverse Y position of area. 1 = top, -1 = bottom, -0.5 = half way.
# S - Scale multiplier. 0.5 means the area will be shrunk to half of its size on both axis. 2 will essentially render the area useless, as it will only use a half of your desktop area.

# xinput set-prop $devname --type=float "Coordinate Transformation Matrix" W 0 X 0 H Y 0 0 S

### default
#xinput set-prop "HUION PenTablet Pen" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1

xinput set-prop "$devname" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 4

xsetwacom set "$devname" Mode Relative
