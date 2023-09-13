#!/bin/bash

THEMES="/home/kuba/.dotfiles/iceberg/themes"
THEME="$THEMES/$1"

# TARGET FILES::
#         POLYBAR    ->   ~/.dotfiles/polybar/config.ini
#         ROFI       ->   ~/.dotfiles/rofi/themes/iceberg.rasi
#         KITTY      ->   ~/.dotfiles/iceberg.conf
#         I3         ->   ~/.dotfiles/i3/colors
#         FIREFOX    ->   HMM?>
#

theme_polybar() {
  color="$1"

}

theme_rofi() {
  color="$1"

}

theme_kitty() {
  color="$1"

}

theme_i3() {
  color="$1"

}

for color in cat THEME; do
  theme_polybar $color
  theme_rofi $color
  theme_kitty $color
  theme_i3 $color
done
