pipeline {
    agent any

    environment {
        // Set Java home
        JAVA_HOME = "C:/Program Files/Java/jdk-21.0.9"
        // Add Java and Maven to PATH
        PATH = "${JAVA_HOME}/bin;C:/maven/apache-maven-3.9.9/bin;${env.PATH}"
    }

    stages {
        stage('Check workspace') {
            steps {
                echo "Workspace: ${env.WORKSPACE}"
                bat 'dir'
            }
        }

        stage('Clean') {
            steps {
                bat 'mvn clean'
            }
        }

        stage('Compile') {
            steps {
                bat 'mvn compile'
            }
        }

        stage('Install') {
            steps {
                bat 'mvn install'
            }
        }
    }
}
