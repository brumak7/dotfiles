#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# monitor_count=$(xrandr -q | grep ' connected' | wc -l)

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config.ini main &
    # polybar -c ~/.config/polybar/config.ini second &

# if [[ "$monitor_count" == 2 ]]; then
#     polybar -c ~/.config/polybar/config.ini second &
# fi
