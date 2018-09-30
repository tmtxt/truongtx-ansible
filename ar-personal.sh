#!/usr/bin/env sh

ansible-playbook -i ar-hosts -e "host=$1" ar-personal.yml
