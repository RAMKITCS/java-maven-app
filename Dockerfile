# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /usr/app

# Copy the JAR file into the container at /usr/app
COPY target/my-app-1.0-SNAPSHOT.jar /usr/app

# Run the JAR file
ENTRYPOINT ["java","-jar","my-app-1.0-SNAPSHOT.jar"]
