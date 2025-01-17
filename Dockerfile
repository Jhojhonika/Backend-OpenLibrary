# Step 1: Use an official OpenJDK 21 image as the base image (Java 21 in this example)
FROM openjdk:21-jdk-slim

# Step 2: Set the working directory inside the container to /app
WORKDIR /app

# Step 3: Copy the Spring Boot JAR file to the container (we'll use the target/ folder)
COPY book-management-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Expose port 8081 so we can access the app externally 
EXPOSE 8081 

# Step 5: Run the Spring Boot app by executing the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
