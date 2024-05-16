

pipeline {
    agent any
    environment {
        localServerDir = '/home/digitech/jenkinsTest/frontend'
        deployScript = './deploy.sh'
    }
    stages {

        stage('deploy') {
            steps {
                script {
                    // Create a temporary directory to hold the new deployment
                    def tempDir = sh(
                        script: "mktemp -d",
                        returnStdout: true
                    ).trim()

                    // Copy the files to the temporary directory
                    sh "cp -r * ${tempDir}"

                    // Execute the deployment script
                    sh "./deploy.sh ${tempDir} ${localServerDir}"

                    echo "Deployment completed successfully"
                    
                    echo "${tempDir}"
                     // Clean up the temporary directory
                    sh "rm -rf ${tempDir}"
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
