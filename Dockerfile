FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src/ ./src/
RUN mvn clean package assembly:single

FROM openjdk:17-jre-slim
WORKDIR /app
COPY --from=build /app/target/java-cicd-demo-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
