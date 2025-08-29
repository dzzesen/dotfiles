#!/usr/bin/env bash
set -euo pipefail

DMENU_CMD="fuzzel --config /home/dzesen/.dotfiles/configs/fuzzel/dmenu.ini"
POWEROFF_CMD="systemctl poweroff"
LOCK_CMD="swaylock"
LOGOUT_CMD="niri msg action quit"

choices=(
  "Power Off"
  "Lock"
  "Logout"
  "Cancel"
)

selected="$(
  printf '%s\n' "${choices[@]}" | ${DMENU_CMD} --dmenu --prompt "Power Menu: " || true
)"
[ -n "${selected}" ] || exit 0

case "$selected" in
  "Power Off")
    exec ${POWEROFF_CMD}
    ;;
  "Lock")
    exec ${LOCK_CMD}
    ;;
  "Logout")
    exec ${LOGOUT_CMD}
    ;;
  *) : ;;
esac
