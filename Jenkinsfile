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
                    echo "Checked out 'master' branch"
                }
            }
        }

    }

    post {
        always {
            cleanWs()
        }
    }
}
