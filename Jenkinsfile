pipeline {
    agent any
    stages{
        stage('Build') {
            steps {
                sh 'mvn clean package'
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