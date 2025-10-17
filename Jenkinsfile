pipeline {
    agent any

    environment {
        DEPLOY_ENV = "dev"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'dev', url: 'https://github.com/mosalman8785/jenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building for dev..."
            }
        }

        stage('Test') {
            steps {
                echo "Running tests for dev..."
            }
        }

        stage('Deploy') {
            steps {
                echo "Automatically deploying to ${env.DEPLOY_ENV}..."
            }
        }
    }
}
