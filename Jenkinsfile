pipeline {
    agent {
        docker {
            image 'ruby'
        }
    }

    stages {
        stage('Prep') {
            steps {
                sh "chmod +x scripts/envConfig.sh"
                sh "./scripts/envConfig.sh"
            }
            
        }

        stage('Build') {
            steps {
                sh 'bundle install'
            }
        }

        stage('Testing') {
            steps {
                sh 'cucumber'
            }
        }
    }
}