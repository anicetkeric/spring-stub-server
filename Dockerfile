# creates a layer from the openjdk:17-alpine Docker image.
FROM openjdk:17-alpine

MAINTAINER boottechnologies.ci@gmail.com

# cd /app
WORKDIR /app

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-stub-server-*.jar

# cp target/spring-stub-server-0.0.1-SNAPSHOT.jar /app/spring-stub-server.jar
COPY ${JAR_FILE} spring-stub-server.jar

# java -jar /app/spring-stub-server.jar
CMD ["java", "-jar", "-Xmx1024M", "/app/spring-stub-server.jar"]

# Make port 8080 available to the world outside this container
EXPOSE 8080
