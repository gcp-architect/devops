pipeline {
    agent {label 'master'}
    stages {
        stage('build') {
            steps {
                sh '/home/scripts/build.sh'
}
}

stage('plan') {
steps {
sh '/home/scripts/plan.sh'
}
}

stage('approve') {
steps {
input message: 'Approve to deploy code? (Click "Proceed" to continue)'
	}
}

stage('deploy') {
            steps {
                sh '/home/scripts/deploy.sh'
            }
        }
    }
}
