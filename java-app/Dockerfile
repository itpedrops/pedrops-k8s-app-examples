#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
#RUN mvn -f /home/app/pom.xml clean package
RUN mvn -f /app/pom.xml clean install
#
# Package stage
#
FROM openjdk:11-jre-slim
#WORKDIR /app
COPY --from=build /target/hello-world-1.0.1-SNAPSHOT.jar /usr/local/lib/hello-world-1.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/hello-world-1.0.1-SNAPSHOT.jar"]
