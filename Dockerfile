# Use Eclipse Temurin JDK 17 as the base image
FROM eclipse-temurin:17-jdk-alpine

# Expose port 8080
EXPOSE 8080

WORKDIR /app


RUN mkdir -p /app


COPY  ./target/*.jar /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]



