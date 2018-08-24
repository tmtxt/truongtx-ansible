#!/usr/bin/env sh

# $1: list of tags separated by comma
function run_playbook {
    if [[ -n "$1" ]]; then
        ansible-playbook -i hosts --tags $1 jekyll.yml
    else
        ansible-playbook -i hosts jekyll.yml
    fi
}

run_playbook
