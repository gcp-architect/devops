pipeline {
    agent {label 'master'}
    stages {
        stage('build') {
            steps {
                /bin/bash """
cd /home/code
git clone https://github.com/gcp-architect/devops.git
export TF_DATA_DIR=/home/code/terraform_data
cd /home/code/devops
/home/terraform init
/home/terraform apply -auto-approve
rm -rf /home/code/devops
"""
            }
        }
    }
}
