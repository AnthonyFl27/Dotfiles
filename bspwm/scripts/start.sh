#!/usr/bin/bash

function script() {
  $HOME/.config/bspwm/scripts/${@} &
  return $?
}

script borders
eww -c $HOME/.config/eww/bar/ open bar
eww -c $HOME/.config/eww/widgets/ open bar 
feh --bg-fill $HOME/.config/bspwm/walls/7.png
xsetroot -cursor_name left_ptr
pgrep -x sxhkd > /dev/null || sxhkd &
picom &
loadkeys es


