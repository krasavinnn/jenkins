pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                sh 'mkdir -p /var/lib/jenkins/workspace/pipe-for-git/jenkins'
                sh 'git clone https://github.com/krasavinnn/jenkins.git /var/lib/jenkins/workspace/pipe-for-git/jenkins'
                sh 'cp /etc/installapache.sh /var/lib/jenkins/workspace/pipe-for-git/jenkins/'                
                dir(path: '/var/lib/jenkins/workspace/pipe-for-git/jenkins') {
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add installapache.sh"'
                }
            }
        }
    }
}
