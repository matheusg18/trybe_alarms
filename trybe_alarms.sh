#!/bin/bash

register_alarm()
{
    #$1 is the time, as hh:mm, when the notification will be shown
    #$2 is the description
    echo -e "Aviso de \"$2\" criado para as \"$1\"" >> ./logs/alarm_log.txt
}

remove_alarm_from_log()
{
    #must implement
}

show_log()
{
    while IFS= read -r line || [[ -n "$line" ]]
        do
            echo "================================================================"
            echo -e "\t$line"
        done < ./logs/alarm_log.txt

    echo "================================================================"
}

add_alarm()
{
    #$1 is the time, as hh:mm, when the notification will be shown
    #$2 is the description
    CURRENT_TIME=$(date +%s)
    TARGET_TIME=$(date -d "$1" +%s)
    SLEEP_SECONDS=$(($TARGET_TIME - $CURRENT_TIME))

    if [ $SLEEP_SECONDS -lt 0 ]
        then
            echo -e "---> Já passou do horário de \"$2\"!"
        else
            (sleep $SLEEP_SECONDS && notify-send -i ~/trybe_alarms/resources/betrybe.jpg -t 10 Trybe "$2") &
            register_alarm "$1" "$2"
    fi
}

#Flux control variables
i=0
TRYBE_HOUR=""

if [ $# -eq 0 ]
    then
        show_log
fi

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
