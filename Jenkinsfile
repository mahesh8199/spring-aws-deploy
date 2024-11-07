pipeline{
    agent any

    stages{
        stage('Build maven'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/mahesh8199/spring-aws-deploy.git']])
                sh 'mvn clean install'
            }
        }
        stage('build docker image'){
            steps{
                sh 'docker build -t kurapatim/devops-integration .'
            }
        }
        stage('push docker image to docker hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerpwd', variable: 'dockerhubpwd')]) {

                    sh 'docker login -u kurapatim -p ${dockerhubpwd}'
                    }
                    sh 'docker push kurapatim/devops-integration'
                }
            }
        }
        stage('deploy into k8s'){
          steps{
            script{
            kubernetesDeploy (configs: 'Deploymentservice.yaml', kubeconfigId: 'k8sconfigpwd')
            }
          }
        }
    }
}