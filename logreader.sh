#!/bin/bash

source /usr/share/crails-deploy/$1 2> /dev/null
source ./variables 2> /dev/null

logfile="/var/log/$1/$APPLICATION_NAME.log"
total_lines=`wc -l "$logfile" | cut -d' ' -f1`
extract_lines=500

if [[ "$LAST_LOG_LINE" > "$total_lines" ]] ; then
  extract_lines="$total_lines"
elif [[ "$LAST_LOG_LINE" > 0 ]] ; then
  extract_lines=`expr $total_lines - $LAST_LOG_LINE`
fi

echo $total_lines
tail -n $extract_lines "$logfile"
