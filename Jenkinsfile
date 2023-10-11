pipeline {
    agent any

    stages {
        stage('Copy Files to GitHub') {
            steps {
                sh 'cp /var/lib/jenkins/installapache.sh jenkins/'
                sh 'cp /var/lib/jenkins/checklogs.sh jenkins/'
                dir('jenkins') {
                    git config --global user.email "krasavin5718@gmail.com"
                    git config --global user.name "krasavinnn"
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add files"'
                    sh 'git push origin main'
                }
            }
        }
    }
}
