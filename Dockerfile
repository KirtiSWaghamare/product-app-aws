# Use OpenJDK 17 base image
FROM public.ecr.aws/docker/library/openjdk:17

# Set working directory
WORKDIR /app

# Copy JAR file
COPY target/ProductAppAWS-0.0.1-SNAPSHOT.jar app.jar

# Expose application port
EXPOSE 8080

# Run Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
