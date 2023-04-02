pipeline {
    agent any
    environment {
        DATE = new Date().format('yy.M')
        TAG = "${DATE}.${BUILD_NUMBER}"
    stages {
        stage('Docker Build') {
            steps {
                script {
                    docker.build("default-docker-local/hello-world:${TAG}")
                }
            }
       }
    }
    }
}
