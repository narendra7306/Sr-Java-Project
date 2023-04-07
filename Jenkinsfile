pipeline {
    agent any
    tools {
        maven 'maven-3.9.1' 
    }
    environment {
        registry = "zentech.jfrog.io/docker/java-app:${BUILD_NUMBER}"
        dockerImage = ""
        artifactory_Creden = credentials('artifactory-credentials')
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
                sh 'docker login -u $artifactory_Creden_USR -p $artifactory_Creden_PSW zentech.jfrog.io'
                sh 'docker push ${registry}'
            }
        }
        
    }
}
