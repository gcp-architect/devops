pipeline {
    agent {label 'master'}
    stages {
        stage('build') {
            steps {
                sh """
cd /home/code
git clone https://github.com/gcp-architect/devops.git
gcloud auth activate-service-account --key-file /home/ella_anusha16/key.json
rm -rf /home/code/devops
"""
}
}

}
}
