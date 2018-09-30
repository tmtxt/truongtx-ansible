#!/usr/bin/env sh

# $1: list of tags separated by comma
if [[ -n "$1" ]]; then
    ansible-playbook -i hosts --tags $1 pedigree.yml
else
    ansible-playbook -i hosts pedigree.yml
fi
