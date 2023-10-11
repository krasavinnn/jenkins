pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                    sh 'git clone https://github.com/krasavinnn/jenkins.git'
                    sh 'cp /var/lib/jenkins/installapache.sh /var/lib/jenkins/workspace/jengit2/jenkins/'
                    sh 'cp /var/lib/jenkins/checklogs.sh /var/lib/jenkins/workspace/jengit2/jenkins/'
                dir('jenkins') {
                    sh 'git config --global user.email "krasavin5718@gmail.com"'
                    sh 'git config --global user.name "krasavinnn"'
                    sh 'git add .'
                    sh 'git commit --allow-empty -m "Add installapache.sh"'
                    sh 'git remote set-url origin git@github.com:krasavinnn/jenkins.git'
                    sh 'git push -u origin main'
                }
            }
        }
    }
}
