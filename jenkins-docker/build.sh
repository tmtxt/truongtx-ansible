#!/bin/sh

if [[ -n "$1" ]]; then
    docker build -t tmtxt/jenkins:$1 .
else
    echo "Usage: build.sh version"
    echo "Ex: build.sh 1.0.0"
fi
