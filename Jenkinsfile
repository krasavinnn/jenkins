pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                    sh 'git clone git@github.com:krasavinnn/jenkins.git'
                    sh 'cp -f ./var/lib/jenkins/installapache.sh /var/lib/jenkins/workspace/pipe-for-git'                
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add installapache.sh"'
                    sh 'git remote set-url origin git@github.com:krasavinnn/jenkins.git'
                    sh 'git push -u origin main'      
            }
        }
    }
}
