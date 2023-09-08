pipeline {
    agent any

    // Define the local server directory here at the top level
    environment {
        localServerDir = '/var/www/html/'
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    def scmVars = checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], userRemoteConfigs: [[url: 'https://github.com/abishek07bimali/website.git']]])
                    echo "Checked out 'master' branch"
                }
            }
        }

        stage('Deploy to Local Server') {
            steps {
                // Remove existing files (optional)
               
            }
        }

    }

    post {
        always {
            cleanWs()
        }
    }
}
