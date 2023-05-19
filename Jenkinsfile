pipeline {
    agent {
        docker {
            image 'tapish303/repo-profiler-pipe:latest'
        }
    }
    tools {
      org.jenkinsci.plugins.docker.commons.tools.DockerTool "default-vibinex"
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
