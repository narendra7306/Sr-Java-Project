pipeline {
	agent none
  stages {
    stage('Docker Build') {
    	agent any
      steps {
      	sh 'docker build -t narendra7306/nginx:1.0 .'
      }
    }
  }
}
