pipeline {
    agent {label 'master'}
    stages {
        stage('build') {
            steps {
                bash '/home/code/scripts/build.sh'
}
}

stage('plan') {
steps {
bash '/home/code/scripts/plan.sh'
}
}

stage('approve') {
steps {
input message: 'Approve to deploy code? (Click "Proceed" to continue)'
	}
}

stage('deploy') {
            steps {
                bash '/home/code/scripts/deploy.sh'
            }
        }
    }
}
