#!/usr/bin/env sh
icon="$HOME/.config/sxhkd/lock.png"
tmpbg='/tmp/screen.png'

scrot "$tmpbg"
#convert "$tmpbg" -blur 0x5 "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"

