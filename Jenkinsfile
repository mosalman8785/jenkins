pipeline {
    agent any

    environment {
        APP_NAME = "my-app"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/username/my-app.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building ${env.APP_NAME}..."
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'pytest'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying ${env.APP_NAME}..."
            }
        }
    }

    post {
        success { echo "Pipeline succeeded! 🎉" }
        failure { echo "Pipeline failed! ❌" }
    }
}

