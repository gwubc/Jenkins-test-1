pipeline {
    agent { 
        node {
            label 'worker-node'
            }
      }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                rm -rf Jenkins-test-1
                git clone https://github.com/gwubc/Jenkins-test-1.git
                cd Jenkins-test-1
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
                docker run i1
                '''
            }
        }
    }
}
