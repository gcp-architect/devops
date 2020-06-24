pipeline {
    agent {label 'master'}
    stages {
        stage('build') {
            steps {
                sh """
cd /home/code
git clone https://github.com/gcp-architect/devops.git
build_no=`cat /home/code/devops/build.txt`
gcloud auth activate-service-account --key-file /home/ella_anusha16/key.json
gsutil cp -r /home/code/devops  gs://gcpdevops/build/$build_no/
"""
}
}

stage('plan') {
steps {
sh """
export TF_DATA_DIR=/home/code/terraform_data
cd /home/code/devops
/home/terraform init
/home/terraform plan
"""
            }
        }

stage('approve') {
steps {
input message: 'Approve to deploy code? (Click "Proceed" to continue)'
	}
}

stage('deploy') {
            steps {
                sh """
export TF_DATA_DIR=/home/code/terraform_data
cd /home/code/devops
/home/terraform apply -auto-approve
rm -rf /home/code/devops
"""
            }
        }
    }
}
