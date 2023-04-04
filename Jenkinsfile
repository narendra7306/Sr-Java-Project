pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git credentialsId: 'Github-Credentials', url: 'https://github.com/narendra7306/srdemo-project.git'
            }
        }
        stage('maven build') {
            steps {
                tool name: 'maven-3.9.1', type: 'maven'
            }
        }
        stage('docker build') {
            steps {
                tool name: 'docker', type: 'dockerTool'
            }
        }
    }
}
