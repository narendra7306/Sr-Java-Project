pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git credentialsId: 'Github-Credentials', url: 'https://github.com/narendra7306/srdemo-project.git'
            }
        }
    }
}
