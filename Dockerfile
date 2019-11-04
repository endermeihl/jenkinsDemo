FROM jdk:8
VOLUME /tmp
add ./app.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]