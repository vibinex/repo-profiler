pipeline {
    agent any
    stages {
        stage('Checkout and run devprofiler') {
            steps {
                script {
                    CLONE_DIR = checkout scm
                    REPO_FULL_NAME = 'Alokit-Innovations/repo-profiler'
                    sh 'git --version'
                    sh 'wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb'
                    sh 'sudo -u jenkins apt install libssl1.1_1.1.1f-1ubuntu2_amd64.deb -y'
                    sh 'wget https://github.com/Alokit-Innovations/dev-profiler/releases/download/v0.2.0/devprofiler.deb'
                    sh 'sudo -u jenkins apt install devprofiler.deb -y'
                    sh 'sudo -u jenkins devprofiler -- jenkins "${CLONE_DIR}" "${REPO_FULL_NAME}"'
                    sh 'timestamp=$(date +%s)'
                    sh 'filename="${timestamp}-devprofile.jsonl.gz"'
                    sh 'sudo -u jenkins mv devprofile.jsonl.gz "${filename}"'
                    sh 'sudo -u jenkins curl -F "file=@${filename}"  https://gcscruncsql-k7jns52mtq-el.a.run.app/upload'
                }
            }
        }
    }
}
