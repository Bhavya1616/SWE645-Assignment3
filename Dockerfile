# Stage 1: Build the application
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY . /app
RUN mvn clean package

# Stage 2: Create the final image
FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build /app/target/assign-0.0.1-SNAPSHOT.jar /app/assign-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "assign-0.0.1-SNAPSHOT.jar"]