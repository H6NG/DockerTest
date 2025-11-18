# Use a lightweight OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set the working directory inside the container
WORKDIR /app

# Copy Gradle build files
COPY build/libs/*.jar app.jar

# Expose the port your Spring Boot app will run on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
