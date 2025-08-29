#!/usr/bin/env bash
set -euo pipefail

DMENU_CMD="fuzzel --config /home/dzesen/.dotfiles/configs/fuzzel/dmenu.ini"

layouts=$(
    niri msg keyboard-layouts \
    | sed '1d' \
    | sed 's/* [0-9]/  */'
)

selected="$(
  printf "${layouts}" | ${DMENU_CMD} --dmenu --prompt "Keyboard layouts: " || true
)"
[ -n "${selected}" ] || exit 0


trimmed="$(echo ${selected} | tr -d [:space:])"
index="${trimmed:0:1}"

if [[ "$index" != "*" ]]; then
    exec niri msg action switch-layout ${index}
fi
