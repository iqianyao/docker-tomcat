FROM tomcat:latest

MAINTAINER xiechen@lantrack.net

# add font support for activit and report
RUN mkdir -p /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/fonts/fallback
COPY SIMSUN.TTC /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/fonts/fallback/
COPY SIMSUN.TTC /usr/share/fonts/

# add mysql
RUN apt-get update
RUN apt-get install mysql-community-server
RUN apt-get install mysql-server

# change date time zone
COPY catalina.sh /usr/local/tomcat/bin/
RUN chmod +x /usr/local/tomcat/bin/catalina.sh


