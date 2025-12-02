# Use Java 17 (Metabase requirement)
FROM openjdk:17-slim

# Set working directory
WORKDIR /app

# Download Metabase
ADD https://downloads.metabase.com/v0.50.15/metabase.jar /app/metabase.jar

# Expose port
EXPOSE 3000

# Start Metabase (port comes from MB_JETTY_PORT)
CMD ["java", "-jar", "/app/metabase.jar"]
