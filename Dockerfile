
# Step 1: Create a runtime image with JRE (use openjdk:17-alpine)
FROM openjdk:17-alpine


# Step 2: Copy the built JAR from the build stage
ADD /target/devops-integration.jar devops-integration.jar

# Step 3: Expose the port (e.g., for Spring Boot, default is 8080)
EXPOSE 8080

# Step 4: Define the entrypoint to run your Java application
CMD ["java", "-jar", "devops-integration.jar"]
