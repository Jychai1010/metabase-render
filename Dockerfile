FROM metabase/metabase:v0.50.15

ENV JAVA_TIMEZONE=Asia/Kuala_Lumpur

# Always expose Railway's assigned port
EXPOSE ${PORT}

# Force Metabase to respect PORT
ENV MB_JETTY_PORT=${PORT}

CMD ["java", "-jar", "/app/metabase.jar"]
