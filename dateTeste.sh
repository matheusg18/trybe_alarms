#!/usr/bin/zsh

CURRENT_TIME=$(date +%s)
TARGET_TIME=$(date -d '04:30' +%s)
SLEEP_SECONDS=$(($TARGET_TIME - $CURRENT_TIME))

echo $SLEEP_SECONDS

(sleep $SLEEP_SECONDS && notify-send -t 0 Trybe 'Bora estudar tryber') &