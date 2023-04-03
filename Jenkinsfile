pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-credentials', url: 'https://github.com/narendra7306/srdemo-project.git']])
            }
        }
        stage('maven build') {
            steps {
                tool name: 'maven-3.9.1', type: 'maven'
             }
        }
        stage('build docker image') {
            steps {
                tool name: '', type: 'dockerTool'
                sh 'docker build -t narendra7306/nginx:1.0 .'
            }
        }
    }
}
