#!/usr/bin/env sh

# run aria2 playbook for host p1
# remember to export RPC_PASSWORD before running this function
function run-aria2 {
    export WEBUI_PORT=25598
    export RPC_PORT=6800
    export DATA_DIR=/home/tmtxt/aria2-data
    export RCLONE_DIR=/home/tmtxt/.config/rclone
    ansible-playbook -i hosts -e "host=p1" aria2.yml
}
