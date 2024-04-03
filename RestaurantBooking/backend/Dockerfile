# Backend Dockerfile

# Use Maven base image to build the project
FROM maven:3.8.4-openjdk-17 as builder
WORKDIR /app
COPY . .
# Package the application into a runnable jar file
RUN mvn package

# Use OpenJDK for running the application
FROM openjdk:17
WORKDIR /app
# Copy the jar file from the builder stage
COPY --from=builder /app/target/*.jar RestaurantBookingApplication.jar
# Command to run the application
CMD ["java", "-jar", "RestaurantBookingApplication.jar"]
