#!/usr/bin/env sh

ansible-playbook -i hosts --ask-vault-pass main.yml
