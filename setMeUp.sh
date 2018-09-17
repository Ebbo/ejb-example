#!/bin/sh
# Setup Wildfly 14.0.1.Final for example

wget http://download.jboss.org/wildfly/14.0.1.Final/wildfly-14.0.1.Final.zip .
unzip -e wildfly-14.0.1.Final.zip
cd wildfly-14.0.1.Final/bin/
./add-user.sh -u jboss -p jboss12345 -s
./standalone.sh &
sleep 5
echo username: jboss
echo password: jboss1235
echo Please visit http://127.0.0.1:9990 and deploy the EAR server file 
echo Please read the README.MD


