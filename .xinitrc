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


xrandr --output HDMI-1 --auto --right-of eDP-1 &
xsetwacom --set "HUION Huion Tablet_GS1331 stylus" MapToOutput HEAD-1
session=${1}

export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11

case $session in
    gnome) exec gnome-session ;;
    i3|i3wm) dbus-launch --sh-syntax --exit-with-session i3 --shmlog-size 0;;
    xfce) exec startxfce4 ;;
    cinnamon) exec cinnamon-session ;;
    *) dbus-launch --sh-syntax --exit-with-session i3 --shmlog-size 0;;
esac
