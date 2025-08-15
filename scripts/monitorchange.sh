# Check if HDMI1 is connected
if xrandr | grep "HDMI-1 connected"; then
    # HDMI1 is connected: set it as primary, turn off eDP1
    xrandr --output HDMI-1 --primary --auto --output eDP-1 --off

    # fix wallpaper dimensions
    feh --bg-fill ~/Pictures/silenthill.jpg
else
    # HDMI1 is not connected: set eDP1 as primary
    xrandr --output eDP-1 --primary --auto --output HDMI-1 --off

    # fix wallpaper dimensions
    feh --bg-fill ~/Pictures/silenthill.jpg
fi

# TO RUN THIS:
# make executable: chmod +x ~/monitorchange.sh
# Then maybe give it a keyboard shortcut in the i3 config to execute it