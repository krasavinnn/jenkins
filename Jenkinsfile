pipeline {
    agent any

    stages {
        stage('Copy Files to GitHub') {
            steps {
                sh 'git clone https://github.com/krasavinnn/jenkins'
                sh 'cp installapache.sh jenkins/'
                sh 'cp checklogs.sh jenkins/'
                dir('jenkins') {
                    sh 'git add .'
                    sh 'git commit -m "Copy files to GitHub"'
                    sh 'git push origin main'
                }
            }
        }
    }
}
