WireMock Standalone server, version 2.25.1.

    docker run ovoronin/wiremock-server -p 8080:8080

Mount volumes files and mappings to give wiremock some mappings and static files to work with.

Volumes:
- /opt/app/mappings - for mappings
- /opt/app/__files - for static files 

Wiremock doesn't like to be stopped. To stop it gracefully do

    curl -XPOST http://localhost:8080/__admin/shutdown


