pipeline {
    agent any

    stages {
        stage('Copy Files to GitHub') {
            steps {
                sh 'cp /var/lib/jenkins/installapache.sh jenkins/'
                sh 'cp /var/lib/jenkins/checklogs.sh jenkins/'
                dir('jenkins') {
                    sh 'git config --global user.email "krasavin5718@gmail.com"'
                    sh 'git config --global user.name "krasavinnn"'
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Your commit message" --author "krasavinnn <krasavin5718@gmail.com>"'
                    sh 'git push origin main'
                }
            }
        }
    }
}
