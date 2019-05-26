FROM openjdk:8-jre-alpine

RUN apk add --no-cache openjdk8
ADD jolokia-jvm-1.6.1-agent.jar /
EXPOSE 8778
CMD ["<other_options", "-javaagent:jolokia-jvm-1.6.1-agent.jar=port=8778,host=0.0.0.0"]

COPY monitoring-1.0-SNAPSHOT.jar /app.jar
EXPOSE 8080
CMD ["/usr/bin/java", "-jar", "/app.jar"]
