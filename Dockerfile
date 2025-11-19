# Use ARM64 OpenJDK 17 base image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy your JAR built by Gradle
COPY build/libs/*.jar app.jar

# Run Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
