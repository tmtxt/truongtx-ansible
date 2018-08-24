#!/usr/bin/env sh

# $1: list of tags separated by comma
function run_playbook {
    if [[ -n "$1" ]]; then
        ansible-playbook -i hosts --ask-vault-pass --tags $1 main.yml
    else
        ansible-playbook -i hosts --ask-vault-pass main.yml
    fi
}

if [[ -n "$1" ]]; then
    run_playbook $1
fi

# setup everything using this command, used when first created the VPS to setup everything
# run_playbook

# use this to setup only when the user tmtxt has been created
# run_playbook "setup-tmtxt"

# specific setup tasks

# mount data volume
# use when first time vps created or when it is restarted
# run_playbook "setup-volume-mount"

# personal workspace
# run_playbook "setup-init"

# swapfile
# run_playbook "setup-swapfile"

# docker
# run_playbook "setup-docker"

# firewall
# run_playbook "setup-firewall"

# nginx site
# run_playbook "setup-nginx-sites"

# jenkins
# run_playbook "setup-jenkins"
