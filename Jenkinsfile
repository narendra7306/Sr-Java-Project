pipeline {
    environment {
        registry = "docker_hub_account/narendra7306"
        registryCredential = 'dockerhub'
    }
    agent any

    stages {
        stage('git checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'Github-Credentials', url: 'https://github.com/narendra7306/srdemo-project.git']])
            }
        }
        stage('maven build') {
            steps {
                tool name: 'maven-3.9.1', type: 'maven'
            }
        }
        stage('Initialize') {
            steps {
                def dockerHome = tool 'My-docker'
            }
            steps {
                env.PATH = "${dockerHome}/bin:${env.PATH}"
            }
               
        }
        stage('docker build') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }
    }
}
