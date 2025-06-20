FROM openjdk:17
COPY target/devops-bootcamp-0.0.1-SNAPSHOT.war app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar", "--server.port=8081"]