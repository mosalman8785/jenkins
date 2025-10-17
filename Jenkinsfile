pipeline {
    agent any

    parameters {
        string(name: 'DEPLOY_ENV', defaultValue: 'prod', description: 'Environment to deploy')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/mosalman8785/jenkins.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building for master..."
            }
        }

        stage('Test') {
            steps {
                echo "Running tests for master..."
            }
        }

        stage('Deploy') {
            steps {
                input message: "Approve deployment to PROD?"
                echo "Deploying to ${params.DEPLOY_ENV}..."
            }
        }
    }
}
