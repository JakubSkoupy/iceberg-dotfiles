#!/bin/bash
highlight_accent_0="#508BBF"
highlight_accent_1="#4EABBF"

dimmed_0="#0A0C0D"
dimmed_1="#212426"
dimmed_2="#333A40"
dimmed_3="#465259"
dimmed_4="#4B5B5D"
dimmed_5="#6B7B7D"

WS=$(
  i3-msg -t get_workspaces | jq | grep "name\": .*\",$" | sed "s/.*: \"\(.*\)\",.*$/\1/"
)
FOCUSED=$(/home/kuba/.dotfiles/polybar/scripts/minimize/get_workspace.sh)
VISIBLE=$(/home/kuba/.dotfiles/polybar/scripts/workspaces/get_visible_workspace.sh)

outputs_info=$(i3-msg -t get_outputs)

focused_output=$(echo "$outputs_info" | jq -r '.[] | select(.name == "DP-4.8") | .current_workspace')

# rnum=1
output=""
for line in $WS; do

  if [ "$line" == "HIDDEN" ]; then
    output=$output
  elif [ "$line" == "$FOCUSED" ]; then
    if [ $focused_output == $FOCUSED ]; then
      output+="%{F$highlight_accent_1}%{T2}%{+u}%{U$highlight_accent_1}$line%{-u} %{B}%{T-}"
    else
      output+="%{F$dimmed_4}%{T1}$line "
      # output+="%{F$dimmed_5}%{T2}%{+u}%{U$dimmed_5}$line[$rnum]%{-u} %{B}%{T-}"
      # output+="%{F$dimmed_4}%{T2}%{+u}%{U$dimmed_5}$line%{-u} %{B}%{T-}"
    fi

  elif [[ " $VISIBLE " == *"$line"* ]]; then
    output+="%{F$dimmed_4}%{T2}%{+u}%{U$dimmed_4}$line%{-u} %{B}%{T-}"
    # output+="%{F$dimmed_4}%{T2}%{+u}%{U$dimmed_4}$line[$rnum]%{-u} %{B}%{T-}"

  else
    output+="%{F$dimmed_4}%{T1}$line "
    # output+="%{F$dimmed_4}%{T1}$line[$rnum] "
  fi

  ((rnum++))
done

echo $output
