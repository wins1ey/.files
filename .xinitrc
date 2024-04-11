#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Set right alt to super
xmodmap -e "keycode 108 = Super_L"
xmodmap -e "remove mod1 = Super_L"

feh --bg-fill ~/.config/wallpapers/space-has-no-limits-1.png ~/.config/wallpapers/space-has-no-limits-2.png &
slstatus &
numlockx &
xautolock -corners ---- -time 30 -locker slock &
thunar --daemon &
exec dwm
