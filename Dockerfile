FROM eclipse-temurin:17-jdk-alpine

# Create the /app directory in the container
RUN mkdir -p /app

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the 'app' directory (created by GitHub Action) to the container's /app directory
COPY app/*.jar /app/bankapp-0.0.1-SNAPSHOT.jar

# Expose the port the app will run on
EXPOSE 8080

# Run the app using Java
CMD ["java", "-jar", "/app/bankapp-0.0.1-SNAPSHOT.jar"]


