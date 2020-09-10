#!/usr/bin/env bash
source ./.env
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')

if [[ "$CURRENT" -gt "$DISK_SPACE_THRESHOLD" ]] ; then
    mail -s 'Disk Space Alert' -r "$ALERT_FROM" "$ALERT_TO" << EOF
Your root partition remaining free space is critically low. Used: $CURRENT%
EOF
fi