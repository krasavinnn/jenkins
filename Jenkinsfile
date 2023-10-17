pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                dir ('/var/lib/jenkins/workspace/pipe-for-git/'){
                    sh 'git clone https://github.com/krasavinnn/jenkins.git'
                    sh 'cp /var/lib/jenkins/installapache.sh .'
                    }
                }
            }
        }
    }
