#!/bin/bash

kitty --name fm -e ranger
i3-msg [instance="fm"] floating enable
i3-msg [instance="fm"] resize set 1280 800
i3-msg [instance="fm"] move position center
i3-msg [instance="fm"] move scratchpad

# SPOTIFY SCRATCHPAD
spotify
i3-msg [instance="spotify"] floating enable
i3-msg [instance="spotify"] resize set 1280 800
i3-msg [instance="spotify"] move position center
i3-msg [instance="spotify"] move scratchpad

# QUICK TERM SCRATCHPAD
kitty --name quick
i3-msg [instance="quick"] floating enable
i3-msg [instance="quick"] resize set 1280 800
i3-msg [instance="quick"] move position center
i3-msg [instance="quick"] move scratchpad

kitty --name python_interpret -e python3
i3-msg [instance="python_interpret"] floating enable
i3-msg [instance="python_interpret"] resize set 1280 800
i3-msg [instance="python_interpret"] move position center
i3-msg [instance="python_interpret"] move scratchpad

kitty --name pulse -e pulsemixer
i3-msg [instance="pulse"] floating enable
i3-msg [instance="pulse"] resize set 800 600
i3-msg [instance="pulse"] move position center
i3-msg [instance="pulse"] move scratchpad
