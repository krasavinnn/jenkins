pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                dir(path: '/var/lib/jenkins/workspace/rhgwr/') {
                    sh 'git clone -b main git@github.com:krasavinnn/jenkins.git jenkins'
                    sh 'cp -f /etc/installapache.sh /var/lib/jenkins/workspace/rhgwr/jenkins'                
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add installapache.sh"'
                    sh 'git remote set-url origin git@github.com:krasavinnn/jenkins.git'
                    sh 'git push -u origin main' 
                }
            }
        }
    }
}
