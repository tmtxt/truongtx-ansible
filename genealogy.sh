#!/usr/bin/env sh

# $1: list of tags separated by comma, omit to run all
if [[ -n "$1" ]]; then
    ansible-playbook -i hosts --tags $1 genealogy.yml
else
    ansible-playbook -i hosts genealogy.yml
fi
