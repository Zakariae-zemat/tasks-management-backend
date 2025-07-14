# Use a lightweight Java 17 image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /coolfolder

# Copy the built JAR into the image
COPY target/*.jar app.jar

# Run the JAR when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
