FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080

# Set the working directory as /app
WORKDIR /app

# Copy the JAR file to the container
COPY  app/*.jar /app/app.jar

# Run the JAR file using the CMD command
CMD ["java", "-jar", "/app/app.jar"]



