#!/usr/bin/env sh

java -jar /opt/app/$MOCK_SERVER_JAR --port 8080 --local-response-templating --verbose $@