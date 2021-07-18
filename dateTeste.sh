#!/bin/bash

#CURRENT_TIME=$(date +%s)
#TARGET_TIME=$(date -d '05:03' +%s)
#SLEEP_SECONDS=$(($TARGET_TIME - $CURRENT_TIME))

#echo $SLEEP_SECONDS

#(sleep $SLEEP_SECONDS && notify-send -t 0 Trybe 'Bora estudar tryber') &

add_alarm()
{
    #$1 is the time when the notification will be shown
    #$2 is the description
    CURRENT_TIME=$(date +%s)
    TARGET_TIME=$(date -d "$1" +%s)
    SLEEP_SECONDS=$(($TARGET_TIME - $CURRENT_TIME))

    echo $SLEEP_SECONDS

    if [ $SLEEP_SECONDS -lt 0 ];
        then
            echo "Passou do horário de $2!"
        else
            (sleep $SLEEP_SECONDS && notify-send -t 0 Trybe "$2") &
    fi
}

i=0
TRYBE_HOUR=""
for arg in "$@";
    do
        if [ $i -eq 0 ];
            then
                echo "i é igual a 0"
                TRYBE_HOUR=$arg
                echo "$TRYBE_HOUR"

                i=1
            else
                echo "i não é igual a 0"
                echo "$arg"

                add_alarm "$TRYBE_HOUR" "$arg"

                i=0
        fi
    done