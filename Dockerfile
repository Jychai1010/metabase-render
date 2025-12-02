FROM metabase/metabase:v0.50.15

ENV MB_JETTY_PORT=${PORT}
ENV JAVA_TIMEZONE=Asia/Kuala_Lumpur

EXPOSE 3000

CMD ["java", "-jar", "/app/metabase.jar"]
