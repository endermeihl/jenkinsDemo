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
        echo '2.Build Docker Image Stage'
        sh 'mvn -B -DskipTests clean package'
        sh 'cp target/app.jar ./'
        sh 'docker build -t ender/cloud-server:1  --build-arg JAR_FILE=target/app.jar .'
      }
    }
  }
  environment {
    JAVA_HOME = '/usr/local/java'
  }
}