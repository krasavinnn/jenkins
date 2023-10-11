pipeline {
    agent any
    stages {
        stage('Copy Files to GitHub') {
            steps {
                    def currentDir = pwd() // Збережемо поточну директорію (де знаходиться Jenkinsfile)
                    def workspaceDir = env.WORKSPACE // Отримаємо робочу директорію пайплайну
                    // Копіюємо файли з поточної директорії в робочу директорію
                    sh "cp ${currentDir}/installapache.sh ${workspaceDir}/"
                    sh "cp ${currentDir}/checklogs.sh ${workspaceDir}/"
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
