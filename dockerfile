# Use a base image that includes Java
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/hospital-management-system.jar /app/hospital-management-system.jar

# Expose the port that the application will run on (if applicable)
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/hospital-management-system.jar"]

