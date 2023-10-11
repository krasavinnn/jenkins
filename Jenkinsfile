pipeline {
    agent any

    stages {
        stage('Copy Files to GitHub') {
            steps {
                sh 'cp installapache.sh https://github.com/krasavinnn/jenkins'
                sh 'cp checklogs.sh https://github.com/krasavinnn/jenkins'
                sh 'git add .'
                sh 'git commit -m "Copy files to GitHub"'
                sh 'git push origin main'
            }
        }
    }
}
