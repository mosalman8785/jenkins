pipeline {
    agent any

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'stage', 'prod'], description: 'Select deployment environment')
    }

    environment {
        APP_NAME = "my-app"
        REPO_URL = "https://github.com/mosalman8785/jenkins.git"
        BRANCH = "master"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out code from ${env.REPO_URL} (branch ${env.BRANCH})"
                git branch: "${env.BRANCH}", url: "${env.REPO_URL}"
            }
        }

        stage('Build') {
            steps {
                echo "Building ${env.APP_NAME}..."
                // Example build command
                // sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests for ${env.APP_NAME}..."
                // Example test command
                // sh 'pytest'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying ${env.APP_NAME} to ${params.ENVIRONMENT} environment..."
                // Example deploy command
                // sh "kubectl apply -f deployment.yaml -n ${params.ENVIRONMENT}"
            }
        }
    }

    post {
        success {
            echo "Pipeline succeeded! 🎉"
        }
        failure {
            echo "Pipeline failed! ❌"
        }
    }
}
