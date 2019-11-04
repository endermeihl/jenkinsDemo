pipeline {
  agent any
  stages {
    stage('Prepare') {
      steps {
        echo '1.Prepare Stage'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
        sh 'docker build -t ender/cloud-server:1  --build-arg JAR_FILE=target/app.jar ./location/'
        echo '2.Build Docker Image Stage'
      }
    }
  }
  environment {
    JAVA_HOME = '/usr/local/java'
  }
}