pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                dir(path: '/var/lib/jenkins/workspace/pipe-for-git') {
                    sh 'git clone https://github.com/krasavinnn/jenkins.git jenkins'
                    sh 'echo '#!/bin/bash/' > jenkins/installapache.sh'
                    sh 'echo 'apt update' >> jenkins/installapache.sh'
                    sh 'echo 'apt install apache2 -y' >> jenkins/installapache.sh'
                    sh 'echo 'service apache2 restart' >> jenkins/installapache.sh'
                    sh 'echo 'systemctl enable apache2' >> jenkins/installapache.sh'
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add installapache.sh"'
                }
            }
        }
    }
}
