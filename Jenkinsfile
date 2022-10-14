pipeline {
    agent any
    stages {
        stage("Checkout") {
            steps {
                checkout scm
            }
        }
        stage("Build") {
            steps {
                sh "docker-compose build web"
            }
        }
        stage("deploy") {
            steps {
                sh "docker-compose up1"
            }
        }
        stage("Update model") {
            steps {
                sh "docker exec -i mlops_serving_web python train.py"
            }
        }
    }
}