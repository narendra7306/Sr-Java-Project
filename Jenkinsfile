pipeline {
    agent any
    tools {
        maven 'maven-3.9.1' 
    }
    environment {
        registry = "20.244.33.239:8082/docker-local/java-app:1.0"
        dockerImage = ""
    }
    stages {
        stage('git checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'Github-Credentials', url: 'https://github.com/narendra7306/srdemo-project.git']])
            }
        }
        stage('maven build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('docker build') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }
        stage('Image push') {
            steps {
                sh 'docker login -u admin -p Naren@7306  http://20.244.33.239:8081'
                sh 'docker push ${registry}'
            }
        }
        
    }
}
