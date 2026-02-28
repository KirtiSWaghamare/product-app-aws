# Build the application using Maven
FROM public.ecr.aws/docker/library/maven:3.9-amazoncorretto-21 AS build

# Set working directory
WORKDIR /app

# Copy the pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Create the minimal runtime image
FROM amazoncorretto:21-alpine AS runtime
WORKDIR /app

# Copy only the built .jar file from the 'built' stage
COPY --from=build /app/target/*.jar app.jar

# Expose application port
EXPOSE 8000

# Run Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
