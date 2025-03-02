# Java CI/CD Demo

This repository demonstrates a CI/CD pipeline for a simple Java application using GitHub Actions and DockerHub.

## Project Structure

- `src/main/java/App.java` - Simple Java HTTP server that returns "Hello World!"
- `src/test/java/AppTest.java` - JUnit tests for the application
- `pom.xml` - Maven configuration file
- `Dockerfile` - Multi-stage Docker build for the Java application
- `.github/workflows/main.yml` - GitHub Actions workflow for CI/CD

## CI/CD Pipeline

The CI/CD pipeline does the following:

1. **Build Job**
   - Checks out the code
   - Sets up JDK 17
   - Builds the application with Maven
   - Logs in to DockerHub
   - Builds and pushes the Docker image

2. **Test Job**
   - Checks out the code
   - Sets up JDK 17
   - Runs tests with Maven

## Running Locally

### Prerequisites
- Java 17 or higher
- Maven
- Docker (optional)

### Build and Run with Maven
```bash
mvn clean package
java -jar target/java-cicd-demo-1.0-SNAPSHOT-jar-with-dependencies.jar
```

### Build and Run with Docker
```bash
docker build -t java-cicd-demo .
docker run -p 8080:8080 java-cicd-demo
```

Once running, access the application at http://localhost:8080.