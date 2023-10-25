pipeline {
    agent any
    stages {
        stage('Copy Files to Jenkins Directory') {
            steps {
                script {
                    def jenkinsDirectory = '/var/lib/jenkins/workspace/pipe-for-git/jenkins'

                    // Створити директорію "jenkins", якщо її немає
                    sh "mkdir -p ${jenkinsDirectory}"

                    // Копіювати файл installapache.sh у директорію "jenkins"
                    sh "cp /etc/installapache.sh ${jenkinsDirectory}/"

                    // Перейти до директорії "jenkins"
                    dir(path: jenkinsDirectory) {
                        // Виконати коміт
                        sh 'git init'
                        sh 'git add .'
                        sh 'git commit -m "Add installapache.sh"'
                    }
                }
            }
        }
    }
}
