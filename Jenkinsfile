pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-credentials', url: 'https://github.com/narendra7306/srdemo-project.git']])
            }
        }
        stage('compile-package') {
           // getting maven home path
           def mvnHome = tool name: 'maven-3.9.1', type: 'maven'
           sh "${mvnHome}/bin/mvn package"
        }
    }
}
