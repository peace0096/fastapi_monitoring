pipeline {
    agent any
    stages {
        step("Checkout") {
            steps {
                checkout scm
            }
        }
        stage("Build") {
            steps {
                sh "docker-compose build web"
            }
        }
    }
}