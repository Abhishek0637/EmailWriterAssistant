# Use an OpenJDK base image
FROM openjdk:21-jdk-slim

# Set work directory inside container
WORKDIR /app

# Copy the actual JAR file into the container
COPY target/email-writer-sb-0.0.1-SNAPSHOT.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
