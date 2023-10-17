pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                    sh 'git clone https://github.com/krasavinnn/jenkins.git'
                    sh 'cp /var/lib/jenkins/installapache.sh .'
                }
            }
        }
    }
