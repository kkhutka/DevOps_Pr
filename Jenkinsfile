
pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build and Deploy') {
            steps {
                sh "chmod +x -R ${env.WORKSPACE}"
                sh './jenkins/my_script.sh'
            }
        }
    }
}