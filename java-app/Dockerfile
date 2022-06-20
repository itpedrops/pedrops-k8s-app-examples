#
# Build stage
#
FROM maven AS build
COPY src /home/app/src
#WORKDIR /app
COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package
RUN mvn -f /home/app/pom.xml clean install
#
# Package stage
#
FROM openjdk:11-jre-slim
#WORKDIR /app
COPY --from=build /home/app/target/hello-world-1.0.1-SNAPSHOT.jar /usr/local/lib/hello-world-1.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/hello-world-1.0.1-SNAPSHOT.jar"]
