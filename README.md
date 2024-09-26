Dockerized Java Spring Boot Application
This is a simple Java Spring Boot application containerized using Docker. The application demonstrates basic web service functionality and is designed to be easily run inside a Docker container.

Prerequisites
Before you begin, ensure you have the following installed on your machine:

Docker (to build and run the container)
Java 11 (for local development, if needed)
Maven (if building the JAR locally)

Project Structure
├── src
│   └── main
│       ├── java
│       │   └── com.example.dockerjavaapp
│       │       ├── DockerJavaAppApplication.java
│       │       └── HelloController.java
│       └── resources
│           └── application.properties
├── Dockerfile
├── .dockerignore
├── pom.xml
└── README.md

Building and Running the Application
1. Clone the Repository
   Clone this repository to your local machine:
git clone <repository-url>
2. Build the Application JAR
   Navigate to the root of your project and run the following command to build the JAR file:
   ./mvnw clean package

3. Build the Docker Image
   Build the Docker image using the provided Dockerfile:
   docker build -t docker-java-app .
   This command tells Docker to build an image named docker-java-app from the Dockerfile in the current directory.
4. Run the Docker Container
   Run the Docker container, mapping it to port 8081 on your local machine:
5.  Access the Application
    Once the container is running, open your browser and navigate to:
    http://localhost:8081
    You should see the output from the HelloController, which could be something like:
    Hello from Dockerized Java 11 App!
    Stopping the Application
    If you need to stop the running Docker container, first list all running containers:
    docker ps
    Then stop the container using its container_id:
    docker stop <container_id>
    Clean Up
    To remove the Docker container after stopping it:
6. docker rm <container_id>
   To remove the Docker image:
   docker rmi docker-java-app
   Additional Notes
   You can modify the application and rebuild the Docker image by repeating steps 2 and 3.
   The .dockerignore file is used to exclude files that are not necessary for the Docker image (e.g., .idea/ and target/).
7. 

