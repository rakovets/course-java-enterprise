#!/bin/sh
echo "Deploy *.war to Apache Tomcat"
cp -v *.war /opt/apache-tomcat-9/webapps
/opt/apache-tomcat-9/bin/shutdown.sh
/opt/apache-tomcat-9/bin/startup.sh