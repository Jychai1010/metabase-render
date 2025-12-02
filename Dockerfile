FROM metabase/metabase:v0.50.15

# Set timezone
ENV JAVA_TIMEZONE=Asia/Kuala_Lumpur

# Railway does NOT provide PORT at build time.
# So we DO NOT set MB_JETTY_PORT here.
# We set it dynamically in CMD.

EXPOSE 3000

CMD sh -c "java -DMB_JETTY_PORT=$PORT -jar /app/metabase.jar"
