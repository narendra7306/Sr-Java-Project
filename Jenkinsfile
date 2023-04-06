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
        
    }
}
