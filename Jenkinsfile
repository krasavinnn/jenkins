pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                dir(path: '/var/lib/jenkins/workspace/pipe-for-git/jenkins/') {
                    sh 'mkdir jenkins'
                    sh 'git clone https://github.com/krasavinnn/jenkins.git jenkins'
                    sh 'cp /etc/installapache.sh jenkins/'                
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add installapache.sh"'
                }
            }
        }
    }
}
