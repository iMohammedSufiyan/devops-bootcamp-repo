pipeline {
    agent any
    tools {
        maven 'maven-3.8.4'
        jdk 'jdk17'
    }
    environment {
        DOCKER_HOST_IP = '13.201.104.78'
    }
    stages{
        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/iMohammedSufiyan/devops-bootcamp-repo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Transfer files to Docker host') {
            steps {
                sh """
                    scp -o StrictHostKeyChecking=no Dockerfile ec2-user@${DOCKER_HOST_IP}:/home/ec2-user/
                    scp -o StrictHostKeyChecking=no target/devops-bootcamp-0.0.1-SNAPSHOT.war ec2-user@${DOCKER_HOST_IP}:/home/ec2-user/
                """
            }
        }
        stage('Docker Build') {
            steps {
                sh """
                    ssh -o StrictHostKeyChecking=no ec2-user@${DOCKER_HOST_IP} 'docker build -t devops-bootcamp-app:1.0 /home/ec2-user'
                """
            }
        }
        stage('Deploy') {
            steps {
                sh """
                   ssh -o StrictHostKeyChecking=no ec2-user@${DOCKER_HOST_IP} 'docker run -d -p 8080:8081 --rm --name devops-bootcamp devops-bootcamp-app:1.0'
                """
            }
        }
    }
}