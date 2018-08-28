#!/usr/bin/env sh

ansible-playbook -i hosts --ask-vault-pass backup-jenkins.yml
