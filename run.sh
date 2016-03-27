#!/usr/bin/env sh

ansible-playbook -K -i hosts --extra-vars "@password.yml" main.yml
