pipeline {
    agent any

    environment {
        // Set Java home
        JAVA_HOME = "C:/Program Files/Java/jdk-21.0.10"
        // Add Java and Maven to PATH
        PATH = "${JAVA_HOME}/bin;C:\apache-maven-3.9.12/bin;${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out GitHub"
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }
        
        stage('Package') {
            steps {
                sh 'mvn package-DskipTests'
            }
        }
    }
}
