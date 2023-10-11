pipeline {
    agent any

    stages {
        stage('Copy Files to GitHub') {
            steps {
                sh 'cp /var/lib/jenkins/installapache.sh https://github.com/krasavinnn/jenkins'
                sh 'cp /var/lib/jenkins/checklogs.sh https://github.com/krasavinnn/jenkins'
                sh 'git add .'
                sh 'git commit -m "Copy files to GitHub"'
                sh 'git push origin main'
            }
        }
    }
}
