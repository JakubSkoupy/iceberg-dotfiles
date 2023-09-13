#!/bin/bash

file="/home/kuba/.config/i3/config"

if [[ $(grep "# smart_gaps on" $file) ]]; then
  sed -i 's/# smart_gaps on/smart_gaps on/g' $file
else
  sed -i 's/smart_gaps on/# smart_gaps on/g' $file
fi

if [[ $(grep "# smart_borders on" $file) ]]; then
  sed -i 's/# smart_borders on/smart_borders on/g' $file
else
  sed -i 's/smart_borders on/# smart_borders on/g' $file
fi

i3-msg reload
