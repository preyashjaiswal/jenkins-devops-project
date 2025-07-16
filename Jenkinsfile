pipeline {
    agent { label 'docker-agent' }
    environment {
        DOCKER_IMAGE = "preyashj/jenkins-sample-app:latest"
    }
    stages {
        stage('Clone') {
            steps {
                git url: 'https://github.com/preyashjaiswal/jenkins-devops-project.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build(DOCKER_IMAGE)
                }
            }
        }
        stage('Push Image to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-creds') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}

