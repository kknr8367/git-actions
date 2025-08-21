# Use official Maven image with JDK 17
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory
WORKDIR /app

# Copy your project files into the container
COPY . .

# Run Maven verify with batch mode and update snapshots
CMD ["mvn", "--batch-mode", "--update-snapshots", "verify"]

