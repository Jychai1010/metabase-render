FROM metabase/metabase:v0.50.15

# Railway / Render will pass PORT during runtime, not build time
# So we DO NOT set MB_JETTY_PORT here.

ENV JAVA_TIMEZONE=Asia/Kuala_Lumpur

# Don’t hardcode 3000
EXPOSE ${PORT}

# Pass the PORT at runtime
CMD ["sh", "-c", "java -DMB_JETTY_PORT=$PORT -jar /app/metabase.jar"]
