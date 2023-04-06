pipeline {
    agent any
    tools {
        maven 'maven-3.9.1' 
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
                sh 'docker build -t narendra7306/nginx:1.0 .'
            }
        }
        stage('Pushing Docker Image to Jfrog Artifactory') {
            steps {
                script {
                    docker.withRegistry('https://20.244.33.239:8082/', 'artifactory-pwd') {
                        docker.image("narendra7306/nginx:1.0").push()
                        docker.image("narendra7306/nginx:1.0").push("latest")
                    }
                }
            }
        }
        
    }
}
