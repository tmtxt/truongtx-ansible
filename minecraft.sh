#!/usr/bin/env sh

# $1: list of tags separated by comma
function run_playbook {
    if [[ -n "$1" ]]; then
        ansible-playbook -i hosts --ask-vault-pass --tags $1 minecraft.yml
    else
        ansible-playbook -i hosts --ask-vault-pass minecraft.yml
    fi
}

# trigger tag run
run_playbook run
