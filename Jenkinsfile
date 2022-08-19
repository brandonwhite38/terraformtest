pipeline {
    agent any
    tools {
        terraform 'Terraform'
    }

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/brandonwhite38/terraformtest']]])
            }
        }
        
        stage ('Terraform init') {
            steps {
                sh label: '', script: 'terraform init'
            }
        }
        
        stage ('Terraform Action') {
            steps {
                echo "terraform action from the parameter is -> ${action}"
                sh ('terraform ${action}');
            }
        }
    }
}
