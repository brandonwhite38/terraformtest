pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/brandonwhite38/terraformtest']]])
            }
        }
        
        stage('terraform') {
            steps {
                sh './terraformw validate -no-color'
            }
        }
        
        stage ('Terraform init') {
            steps {
                sh ("terraform init");
            }
        }
        
        stage ('Terraform Action') {
            steps {
                echo "terraform action from the parameter is -> ${action}"
                sh ("terraform ${action}");
            }
        }
    }
}