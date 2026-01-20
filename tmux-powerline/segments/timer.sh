

#!/usr/bin/env bash
#
# timer.sh  –  countdown segment
# Prints “MM:SS” while @timer_end exists.

run_segment() {
  local end_ts
  end_ts=$(tmux show -vg '@timer_end')
  [[ -z "$end_ts" ]] && return 0       # no timer set → show nothing

  local now_ts remaining
  now_ts=$(date +%s)
  remaining=$(( end_ts - now_ts ))

  if [ "$remaining" -le 0 ]; then      # timer expired → clear & hide
    tmux set -gu '@timer_end'
    return 0
  fi

  printf "%02d:%02d" $(( remaining / 60 )) $(( remaining % 60 ))
  return 0
}


