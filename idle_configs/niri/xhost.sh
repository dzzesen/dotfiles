#!/bin/sh
for i in $(seq 1 20); do
    if DISPLAY=:13 xhost si:localuser:root; then
        exit 0
    fi
    sleep 0.5
done
exit 1
