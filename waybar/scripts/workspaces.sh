#!/bin/bash

# Get focused workspace
focused=$(hyprctl activeworkspace -j | jq '.id')

# Build output
output=""
for i in {1..5}; do
  if [[ $i == "$focused" ]]; then
    output+="    ╔═ WS_$i ═╗    "
    output+="    ╚═       ═╝    "
  else
    output+="    WS_$i    "
  fi
done

# Return as JSON (Waybar expects it)
echo "$output"
