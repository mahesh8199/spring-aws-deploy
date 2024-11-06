pipeline {
    agent any
    tools{
        maven 'Maven 3.9.9'
    }
    stages{
        stage('Build'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mahesh8199/spring-aws-deploy.git']])
                sh 'mvn clean install'
            }
        }

    }
}