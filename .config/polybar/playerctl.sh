#!/usr/bin/env bash

playerctlstatus=$(playerctl status 2> /dev/null)
playerctlartist=$(playerctl metadata artist)
playerctltitle=$(playerctl metadata title)
playerctl_echo="${playerctlartist} - ${playerctltitle}"
if (( ${#playerctl_echo} > 50 )); then
  playerctl_echo=$(echo $playerctl_echo | cut -c 1-50)
  playerctl_echo+="..."
fi
if [[ $playerctlstatus ==  "" ]]; then
    echo ""
elif [[ $playerctlstatus =~ "Playing" ]]; then
  echo "%{A1:playerctl previous:}<%{A}  %{A1:playerctl pause:}⏸️  $playerctl_echo%{A}  %{A1:playerctl next:}>%{A}"
else
  echo "%{A1:playerctl previous:}<%{A}  %{A1:playerctl  play:}▶️  $playerctl_echo%{A}  %{A1: playerctl next:}>%{A}"
fi

