#!/bin/sh
mvn clean package && docker build -t fr.sami/tp2ApplicationZAHIDSami .
docker rm -f tp2ApplicationZAHIDSami || true && docker run -d -p 9080:9080 -p 9443:9443 --name tp2ApplicationZAHIDSami fr.sami/tp2ApplicationZAHIDSami