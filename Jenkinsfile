pipeline {
    agent {
        docker {
            image 'ruby'
        }
    }

    stages {
        stage('Prep') {
            sh 'curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -'
            sh 'sudo apt-get install -y xvfb ca-certificates net-tools netcat gnupg ffmpeg libgtk-3-0 libgdk-pixbuf2.0-dev libxcomposite-dev libdbus-glib-1-2 libatk-bridge2.0-0 wget libgbm1 libnss3 libxss1 libasound2'
            sh 'sudo apt-get install -y nodejs'
        }

        stage('Build') {
            sh 'bundle install'
        }

        stage('Testing') {
            sh 'cucumber'
        }
        
        stage('Publishing reports') {
            echo 'Ready to publish reports'
        }
    }
}