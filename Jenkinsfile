pipeline {
    agent any
    stages {
        stage('Master Branch Deploy Code') {
            when {
                branch 'master'
            }
            steps {
                sh """
                echo "Building Artifact from Master branch"
                """
 
                sh """
                echo "Deploying Code from Master branch"
                """
            }
        }
        stage('dev Branch Deploy Code') {
            when {
                branch 'dev'
            }
            steps {
                sh """
                echo "Building Artifact from dev branch"
                """
                sh """
                echo "Deploying Code from dev branch"
                """
           }
        }
               
        stage('dev1 Branch Deploy Code') {
            when {
                branch 'dev1'
            }
            steps {
                sh """
                echo "Building Artifact from dev1 branch"
                """
                sh """
                echo "Deploying Code from dev1 branch"
                """
           }
        }
                
        stage('dev2 Branch Deploy Code') {
            when {
                branch 'dev2'
            }
            steps {
                sh """
                echo "Building Artifact from dev2 branch"
                """
                sh """
                echo "Deploying Code from dev2 branch"
                """
           }
        }
               
        stage('dev4 Branch Deploy Code') {
            when {
                branch 'dev4'
            }
            steps {
                sh """
                echo "Building Artifact from dev4 branch"
                """
                sh """
                echo "Deploying Code from dev4 branch"
                """
           }
        }
    }
}
