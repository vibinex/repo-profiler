pipeline {
    agent {
        docker {
            image 'tapish303/repo-profiler-pipe:latest'
        }
    }
    tools {
      docker "docker"
    }
    stages {
        stage('Checkout and run devprofiler') {
            steps {
                script {
                    BITBUCKET_CLONE_DIR = checkout scm
                    BITBUCKET_REPO_FULL_NAME = 'repo-profiler'
                    sh './pipe.sh'
                }
            }
        }
    }
}
