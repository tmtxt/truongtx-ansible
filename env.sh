# source this file to get all the necessary functions

function run-jenkins {
    ansible-playbook -i hosts --ask-vault-pass jenkins.yml
}