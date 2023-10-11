pipeline {
    agent any

    stages {
        stage('Copy Files to GitHub') {
            steps {
                sh 'cp /var/lib/jenkins/installapache.sh jenkins/'
                sh 'cp /var/lib/jenkins/checklogs.sh jenkins/'
                dir('jenkins') {
                    sh 'git clone git@github.com:krasavinnn/jenkins.git'                    
                    sh 'git config --global user.email "krasavin5718@gmail.com"'
                    sh 'git config --global user.name "krasavinnn"'
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add files"'
                    sh 'git remote set-url origin git@github.com:krasavinnn/jenkins.git'
                    sh 'git push -u origin main'
                }
            }
        }
    }
}
