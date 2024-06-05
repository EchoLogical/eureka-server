LABEL authors="Faisal Amir"

# Use the official openjdk image as a parent image
FROM openjdk:17-jdk

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY target/eureka-server.jar app/eureka-server.jar

# Make port 8761 available to the world outside this container
EXPOSE 8761

# Run the jar file
ENTRYPOINT ["java", "-jar", "--spring.profiles.active=sit", "app/gp-service-discovery.jar"]