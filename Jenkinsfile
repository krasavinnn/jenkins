pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                dir(path: '/var/lib/jenkins/workspace/pipe-for-git/') {
                    sh 'mkdir jenkins'
                    sh 'git clone -b main git@github.com:krasavinnn/jenkins.git jenkins'
                    sh 'cp -f /etc/installapache.sh /var/lib/jenkins/workspace/pipe-for-git/jenkins'                
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add installapache.sh"'
                }
            }
        }
    }
}
