pipeline {
    agent any
    tools {
        maven 'maven-3.8.4'
        jdk 'jdk17'
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
        stage('Docker Build') {
            steps {
                sh 'docker build -t devops-bootcamp-app:1.0 .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8080:8081 devops-bootcamp-app:1.0'
            }
        }
    }
}