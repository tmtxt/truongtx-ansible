#!/bin/sh

if [[ -n "$1" ]]; then
    docker push tmtxt/rclone:$1
else
    echo "Usage: push.sh version"
    echo "Ex: push.sh 1.0.0"
fi
