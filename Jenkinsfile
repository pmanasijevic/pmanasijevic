pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t demo-app .'
            }
        }
        stage('Test') {
            steps {
                sh './scripts/test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8080:80 demo-app'
            }
        }
    }
}
