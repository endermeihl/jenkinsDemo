pipeline {
    agent {
        node {
               label ‘xxx-agent-机器’
                customWorkspace "${env.JOB_NAME}/${env.BUILD_NUMBER}"
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}