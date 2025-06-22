FROM openjdk:17
COPY target/devops-bootcamp-0.0.1-SNAPSHOT.war app.war
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.war", "--server.port=8081"]