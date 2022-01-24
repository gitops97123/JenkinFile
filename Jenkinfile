pipeline {
    agent any

    stages {
        stage('test') {
            steps {
                 sh 'kubectl apply -f /var/lib/jenkins/pod.yaml --dry-run=client'
            }
        }
        stage('deploy') {
            steps {
                 sh 'kubectl apply -f /var/lib/jenkins/pod.yaml'
            }
        }
        stage('destroy') {
            steps {
                 sh 'kubectl delete -f /var/lib/jenkins/pod.yaml'
            }
        }
    }
}
