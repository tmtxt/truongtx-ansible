#!/usr/bin/env sh

# ansible-playbook -K -i hosts --extra-vars "@password.yml" --tags=bootstrap vps.yml
ansible-playbook -K -i hosts --tags=bootstrap vps.yml
