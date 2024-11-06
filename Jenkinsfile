pipeline {
    agent any
    stages{
        stage('Build'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mahesh8199/spring-aws-deploy.git']])
                sh 'mvn clean install'
            }
        }

    }
}