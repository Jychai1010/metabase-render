FROM metabase/metabase:latest

ENV MB_JETTY_PORT=3000
EXPOSE 3000

CMD ["java", "-jar", "/app/metabase.jar"]
