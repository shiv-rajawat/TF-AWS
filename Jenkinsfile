pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('shiv-g-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('shiv-g-secret-key')
    }
    options {
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }

    stages {

        stage('Checkout') {
            steps {
              checkout scm
              load "$WORKSPACE/pipeline-vars.groovy"
            }
        }

        stage('Build') {
            steps {
                script {
                    run("build")
                }
            }
        }

        stage('Validate') {
            steps {
                script {
                   run("validate")
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    run("deploy")
                }
            }
        }
    }
}

def run(command) {
    PIPELINE_STEPS.each{ name, script ->
        if (name.toLowerCase().contains(command)) {
            sh script
        }
    }
}
