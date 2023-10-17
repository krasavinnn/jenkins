pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                    sh 'git clone git@github.com:krasavinnn/jenkins.git'
                    sh 'git checkout main'
                    sh 'cp /var/lib/jenkins/installapache.sh /var/lib/jenkins/workspace/pipe-for-git/'
                dir('jenkins') {
                    sh 'git add .'                    
                    sh 'git commit --allow-empty -am "Add installapache.sh"'  
                    sh 'git push origin main'
                }
            }
        }
    }
}
