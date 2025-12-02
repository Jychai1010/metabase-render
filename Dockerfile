FROM openjdk:21-slim

ENV MB_JETTY_PORT=3000

# Install dependencies
RUN apt-get update && apt-get install -y wget

# Download Metabase JAR
RUN wget https://downloads.metabase.com/v0.50.23/metabase.jar -O /app/metabase.jar

# Expose port for Render
EXPOSE 3000

# Run Metabase
ENTRYPOINT ["java", "-jar", "/app/metabase.jar"]
