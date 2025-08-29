#!/usr/bin/env bash

out=$(niri msg keyboard-layouts)
# Keyboard layouts:
#  * 0 English (US)
#    1 Russian
#    2 Finnish
#    3 Polish

if echo "$out" | grep -q '^\s*\* 0 '; then
    niri msg action switch-layout 1
else
    niri msg action switch-layout 0
fi
