pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('dockerBuild') {
      steps {
        sh 'docker build -t ender/cloud-server:1'
      }
    }
  }
}