pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                 sh 'docker build -t rocky-linux .'
            }
        }
        stage('test') {
            steps {
                 sh 'docker container run -itd rocky-linux'
            }
        }
        stage('check') {
            steps {
                 sh 'docker container ls'
            }
        }
    }
}
