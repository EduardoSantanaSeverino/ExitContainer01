#!/bin/bash

timeout=6
sleep_for=1

./loop.sh &

find_process=$(ps aux | grep -v "grep" | grep "sleep")

while [ ! -z "$find_process" ]; do
    find_process=$(ps aux | grep -v "grep" | grep "sleep")

    if [ "$timeout" -le "0" ]; then
      echo "Timeout"
      exit 1
    fi

    timeout=$(($timeout - $sleep_for))
    sleep $sleep_for
done

exit 0