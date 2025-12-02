FROM metabase/metabase:v0.50.15

# Timezone
ENV JAVA_TIMEZONE=Asia/Kuala_Lumpur

# Railway ALWAYS provides PORT at runtime.
# So we enforce Metabase to use it:
ENV MB_JETTY_PORT=${PORT}

# EXPOSE will not break even if PORT is not known during build
EXPOSE 0

# Start Metabase with Java
ENTRYPOINT ["java", "-jar", "/app/metabase.jar"]
