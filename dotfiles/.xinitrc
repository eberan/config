#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xset r rate 200 30
feh --bg-scale ~/bg/background.jpg
conky -u2 -d
aplay ~/.sega.wav &
xscreensaver -no-splash &
xbindkeys &

exec awesome

