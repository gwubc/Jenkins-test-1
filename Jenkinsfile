pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                docker build -t i1 .
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                docker run i1 python test.py
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                docker build -t i1 .
                docker run i1
                '''
            }
        }
    }
}
