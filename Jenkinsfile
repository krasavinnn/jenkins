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
                    sh 'git commit -m "Add installapache.sh"'
                    sh 'git remote set-url origin https://github.com/krasavinnn/jenkins.git'
                    sh 'git push -u origin main'
                }
            }
        }
    }
}
