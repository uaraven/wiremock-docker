FROM openjdk:8-jdk-alpine

ARG JAR_FILE

EXPOSE 8080
VOLUME [ "/opt/app/mappings", "/opt/app/__files" ]

WORKDIR /opt/app
COPY ${JAR_FILE} /opt/app
COPY mock-run.sh /opt/app

ENV MOCK_SERVER_JAR=${JAR_FILE}

RUN chmod -R 777 /opt/app/mappings
RUN chmod -R 777 /opt/app/__files

RUN ["chown", "-R", "daemon:daemon", "."]
USER daemon

RUN chmod u+x /opt/app/mock-run.sh


ENTRYPOINT [ "/opt/app/mock-run.sh" ]