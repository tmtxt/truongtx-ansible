#!/usr/bin/env sh

# ansible-playbook -i hosts --ask-vault-pass main.yml
ansible-playbook -i hosts --ask-vault-pass --tags "setup-tmtxt" main.yml
