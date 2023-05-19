pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your code from your source control system (e.g., Git)
                // and store the checked-out path in a variable
                script {
                    env.BITBUCKET_CLONE_DIR = checkout scm
                }
            }
        }

        stage('Run devprofiler') {
            steps {
                script {
                    docker.image('tapish303/repo-profiler-pipe:latest').inside('-e BITBUCKET_CLONE_DIR=${env.BITBUCKET_CLONE_DIR} -e BITBUCKET_REPO_FULL_NAME="repo-profiler"') {}
                }
            }
        }
    }
}
