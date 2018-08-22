#!/usr/bin/env sh

# setup everything using this command, used when first created the VPS to setup everything
# ansible-playbook -i hosts --ask-vault-pass main.yml

# use this to setup only when the user tmtxt has been created
ansible-playbook -i hosts --ask-vault-pass --tags "setup-tmtxt" main.yml
