# Use Eclipse Temurin JDK 17 as the base image
FROM eclipse-temurin:17-jdk-alpine

# Expose port 8080 for the application
EXPOSE 8080

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the 'app' directory (where the artifact is downloaded)
COPY app/*.jar /app/app.jar

# Run the JAR file using the CMD command
CMD ["java", "-jar", "/app/app.jar"]



