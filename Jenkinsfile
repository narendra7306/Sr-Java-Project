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
                    withCredentials([string(credentialsId: 'artifactory-pwd', variable: 'artifactory-pwd')]) {
                    sh 'docker login -u admin -p ${artifactory-pwd}'
}
                    sh 'docker push narendra7306/nginx:1.0'
                }
            }
        }
        
    }
}
