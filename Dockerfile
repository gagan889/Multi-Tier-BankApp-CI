# Use an appropriate Java base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the downloaded app.jar file from the host to the container
COPY app/*.jar /app/app.jar

# Expose the port the app will run on
EXPOSE 8080

# Run the app using Java
CMD ["java", "-jar", "/app/app.jar"]

