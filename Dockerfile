FROM metabase/metabase:v0.50.15
ENV JAVA_TIMEZONE=Asia/Kuala_Lumpur
EXPOSE ${PORT}
CMD ["sh", "-c", "java -DMB_JETTY_PORT=$PORT -jar /app/metabase.jar"]
