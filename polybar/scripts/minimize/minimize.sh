#!/bin/bash

dir="/home/kuba/.dotfiles/polybar/scripts/minimize"
window="xdotool getactivewindow"
workspace=$($dir/get_workspace.sh)

if [ echo $dir/minimized | grep "$workspace" ];
then
        sed -i "s/$workspace \(.*\)/$workspace \1 $window"
