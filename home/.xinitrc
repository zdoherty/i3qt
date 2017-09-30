#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

if [ -d "$HOME/.local/xinitrc.d" ]; then
    for f in $HOME/.local/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

exec i3
