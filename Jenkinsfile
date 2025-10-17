pipeline {
    agent any

    environment {
        DEPLOY_ENV = "test"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'test', url: 'https://github.com/mosalman8785/jenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building for test..."
            }
        }

        stage('Test') {
            steps {
                echo "Running tests for test..."
            }
        }

        stage('Deploy') {
            steps {
                input message: "Approve deployment to TEST?"
                echo "Deploying to ${env.DEPLOY_ENV}..."
            }
        }
    }
}
