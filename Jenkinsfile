
pipeline {

    agent any
    
    stages {
        
        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile
                sh '/usr/local/bin/docker build -t your-image-name'
            }
        }
    }
}