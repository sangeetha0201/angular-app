pipeline {
    environment {
        registry = "sandeep4642/angular-app"
        registryCredential = 'dockerhub'
        dockerImage = ''
      }
    agent { label "slave-1"}
    stages {
        stage('Building Docker image') {
            steps{
              script {
                sh "cd frontend"
                dockerImage = docker.build(registry + ":$BUILD_NUMBER", "-f frontend/Dockerfile")
              }
            }
        
        }
        stage('Deploy push') {
            steps{
              script {
                docker.withRegistry( '', registryCredential ) {
                  dockerImage.push()
                }
              }
            }
          }
        stage('Remove Unused docker image') {
            steps{
              sh "docker rmi $registry:$BUILD_NUMBER"
            }
          }
     }
    }