pipeline {
    agent any

    stages {
        stage('Copy Files to GitHub') {
            steps {
                sh 'cp /var/lib/jenkins/installapache.sh jenkins/'
                sh 'cp /var/lib/jenkins/checklogs.sh jenkins/'
                dir('jenkins') {
                    sh 'git config user.email "krasavin5718@gmail.com"'
                    sh 'git config user.name "krasavinnn"'
                    sh 'git add .'
                    sh 'git commit -m --allow-empty "Your commit message" --author "krasavinnn <krasavin5718@gmail.com>"'
                    sh 'git push origin main'
                }
            }
        }
    }
}
