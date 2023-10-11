pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                    def workspace = sh(script: 'pwd', returnStdout: true).trim()
                    sh 'cp /var/lib/jenkins/installapache.sh "${workspace}"'
                    sh 'cp /var/lib/jenkins/checklogs.sh "${workspace}"'
                dir('jenkins') {
                    sh 'git add .'
                    sh 'git commit -m "Add installapache.sh"'
                    sh 'git remote set-url origin git@github.com:krasavinnn/jenkins.git'
                    sh 'git push -u origin main'
                }
            }
        }
    }
}
