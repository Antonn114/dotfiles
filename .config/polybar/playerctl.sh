#!/usr/bin/env bash

playerctlstatus=$(playerctl status 2> /dev/null)
playerctlartist=$(playerctl metadata artist)
playerctltitle=$(playerctl metadata title)
if [[ $playerctlstatus ==  "" ]]; then
    echo ""
elif [[ $playerctlstatus =~ "Playing" ]]; then
  echo "%{A1:playerctl previous:}<%{A}  %{A1:playerctl pause:}⏸️  $playerctlartist - $playerctltitle%{A}  %{A1:playerctl next:}>%{A}"
else
  echo "%{A1:playerctl previous:}<%{A}  %{A1:playerctl  play:}▶️  $playerctlartist - $playerctltitle%{A}  %{A1: playerctl next:}>%{A}"
fi

