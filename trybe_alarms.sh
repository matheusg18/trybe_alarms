#!/bin/bash

add_alarm()
{
    #$1 is the time, as hh:mm, when the notification will be shown
    #$2 is the description
    CURRENT_TIME=$(date +%s)
    TARGET_TIME=$(date -d "$1" +%s)
    SLEEP_SECONDS=$(($TARGET_TIME - $CURRENT_TIME))

    echo "================================================================"
    if [ $SLEEP_SECONDS -lt 0 ]
        then
            echo -e "\tPassou do horário de \"$2\"!"
        else
            (sleep $SLEEP_SECONDS && notify-send -t 0 Trybe "$2") &
            echo -e "\tAviso de \"$2\" criado para as \"$1\""
    fi
}

#Flux control variables
i=0
TRYBE_HOUR=""

#Main loop
for arg in "$@"
    do
        if [ $i -eq 0 ]
            then
                TRYBE_HOUR=$arg
                i=1
            else
                add_alarm "$TRYBE_HOUR" "$arg"
                i=0
        fi
    done
echo "================================================================"