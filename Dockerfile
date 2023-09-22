FROM gradle:7.6.2-jdk11-alpine AS build
COPY --chown=gradle:gradle . /home/gradle
WORKDIR /home/gradle

RUN ls -la; \
    gradle build

FROM openjdk:11-jre-slim

EXPOSE 5000 9090

RUN ls -la; \
    mkdir /app

COPY --from=build /home/gradle/gradle-wrapper.jar /app/app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]