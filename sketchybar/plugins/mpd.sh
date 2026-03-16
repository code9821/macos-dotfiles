# #!/usr/bin/env bash

if [ $(mpc status | wc -l | tr -d ' ') == "1" ]; then
  output=""
  icon=""
else
  artist=$(mpc current -f %artist%)
  song=$(mpc current -f %title%)

  status=$(mpc status 2>/dev/null | awk         'NR==2{print $1}')
  if [ $status = "[playing]" ]; then
    icon=""
  else
    icon=""
  fi
#  icon=""
  output="${artist} • ${song}"
fi

echo $output
sketchybar -m --set mpd icon="${icon}" \
              --set mpd label="${output}"
