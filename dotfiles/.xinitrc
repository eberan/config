#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

export URHO3D_ROOT=~/code/urho3d_git
export STEAM_FRAME_FORCE_CLOSE=1

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xset r rate 200 30
feh --bg-scale ~/bg/background.jpg
#conky -u2 -d
aplay ~/.psone.wav &
#xscreensaver -no-splash &
xautolock -time 7 -locker 'i3lock -c 000000' &
xbindkeys &

#exec awesome --no-argb
exec $1

