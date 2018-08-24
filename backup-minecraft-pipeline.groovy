#!groovy

node {
    stage('Stop Server') {
        build job: 'run-minecraft-playbook', parameters: [
            string(name: 'TAGS', value: 'run'),
            string(name: 'CONTAINER_STATE', value: 'stopped')
        ]
    }

    stage('Backup Data') {
        build job: 'backup-minecraft', parameters: []
    }

    stage('Restart Server') {
        build job: 'run-minecraft-playbook', parameters: [
            string(name: 'TAGS', value: 'run'),
            string(name: 'CONTAINER_STATE', value: 'started')
        ]
    }
}
