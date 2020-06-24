pipeline {
    agent {label 'master'}
    stages {
        stage('build') {
            steps {
                sh /home/code/scripts/build.sh
}
}

stage('plan') {
steps {
sh /home/code/scripts/plan.sh
}
}

stage('approve') {
steps {
input message: 'Approve to deploy code? (Click "Proceed" to continue)'
	}
}

stage('deploy') {
            steps {
                sh /home/code/scripts/deploy.sh
            }
        }
    }
}
