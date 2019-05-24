FROM openjdk:8-jre-alpine

COPY monitoring-1.0-SNAPSHOT.jar /app.jar
EXPOSE 8080
CMD ["/usr/bin/java", "-jar", "/app.jar"]