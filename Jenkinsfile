pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                echo "Building finish"
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                docker build -t i1 .
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
