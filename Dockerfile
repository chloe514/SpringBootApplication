# Step 1: Use an OpenJDK 11 base image
FROM openjdk:11-jdk-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the built JAR file into the container
COPY target/dockerjavaapp-0.0.1-SNAPSHOT.jar /app/dockerjavaapp.jar

# Step 4: Expose the port that the app will run on (Spring Boot defaults to port 8080)
EXPOSE 8080

# Step 5: Run the application
ENTRYPOINT ["java", "-jar", "/app/dockerjavaapp.jar"]
