@echo off
call mvn clean package
call docker build -t fr.sami/tp2ApplicationZAHIDSami .
call docker rm -f tp2ApplicationZAHIDSami
call docker run -d -p 9080:9080 -p 9443:9443 --name tp2ApplicationZAHIDSami fr.sami/tp2ApplicationZAHIDSami