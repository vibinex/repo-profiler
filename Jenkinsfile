pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code from your source control system (e.g., Git)
                // and store the checked-out path in a variable
                script {
                    env.CHECKOUT_PATH = checkout scm
                }
            }
        }

        stage('Run devprofiler') {
            steps {
                // Run your tool inside a Docker container
                docker.image('tapish303/repo-profiler-pipe:latest').withRun('-u root --entrypoint /bin/bash') {

                }
            }
        }
    }
}
