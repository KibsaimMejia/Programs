# Optimize the Maven build layer by caching dependencies
# Use Maven base image to build the project
FROM maven:3.8.4-openjdk-17 as builder
WORKDIR /app

# Only copy pom.xml initially to leverage Docker cache
COPY pom.xml .
# Download dependencies as a separate layer to improve build speed
RUN mvn dependency:go-offline

# Copy the rest of the project
COPY . .

# Package the application into a runnable jar file, skipping tests to speed up the build
RUN mvn package -DskipTests

# Use OpenJDK for running the application
FROM openjdk:17
WORKDIR /app

# Copy the jar file from the builder stage
COPY --from=builder /app/target/*.jar /app/RestaurantBookingApplication.jar

# Specify a non-root user to run the application (enhances security)
# RUN addgroup --system spring && adduser --system spring --ingroup spring
# USER spring:spring

# Command to run the application
CMD ["java", "-jar", "/app/RestaurantBookingApplication.jar"]
