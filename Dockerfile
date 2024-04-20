FROM maven:3.8.7-openjdk-18-slim AS build

RUN mkdir /opt/app

COPY . /opt/app

WORKDIR /opt/app

RUN mvn clean package

FROM eclipse-temurin:18-jre-alpine

RUN mkdir /opt/app

COPY --from=build  /opt/app/target/checkpoint2-0.0.1-SNAPSHOT.jar /opt/app/checkpoint2-0.0.1-SNAPSHOT.jar

WORKDIR /opt/app

ENV PROFILE=dev

EXPOSE 8080

ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILE}", "-jar", "checkpoint2-0.0.1-SNAPSHOT.jar"]