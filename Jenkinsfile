pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = "AKIAVIZ2545N6PTP2VBV"  // Replace with your credentials ID
        AWS_SECRET_ACCESS_KEY = "bSIlaT/XTvDOQ6Lp5vwlcRzLt0RmR7bbcb8q8J6a"  // Replace with your credentials ID
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/reddyaravind/Jenkins.git'  // Ensure this URL is correct
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
