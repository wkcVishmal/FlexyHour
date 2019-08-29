#!/bin/bash

date=$(date '+%Y-%m-%d')
file=/Users/chamika/Desktop/checkin/$date

if [ ! -f "$file" ] && [ $(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}') == 'SALPO' ]; then
    echo $(date) >> $file;
fi
