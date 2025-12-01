# Use a lightweight Java 21 runtime
FROM eclipse-temurin:21-jre-alpine

# Set the working directory
WORKDIR /app

# Copy the pre-built JAR file into the image
COPY *.jar app.jar

# Tell Render which port the app listens on
EXPOSE 8080

# The command to start the application
ENTRYPOINT ["java","-jar","app.jar"]
