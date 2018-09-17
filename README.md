# Remote-ejb-example

Example for EJB remoting

Author: Ebbo

## About

This simply project demonstrates EJB with  [Wildfly 14.0.1.Final](http://wildfly.org) 

NOTE: The used application server was 14.0.1.Final , the project will also run on newer versions of Wildfly. (Todo so please update the version in the pom.xml files)

## Setup and Run Example

There are 2 projects in this repository.
Server -> creates a ear file and can be deployed to Wildfly.
Client -> talks to the server

### EJB server

This is a maven project, which can be compiled as EJB JAR:

    cd server
    mvn clean compile package install

The resulting file `target/ejb-remote-server.jar` can then be deployed on a running Wildfly server by using the admin console.
The command `mvn install` will install the package your local maven repository. This is needed for the client to run!

### EJB Client

The client can be compiled and execuded by running:
Note: Please run `mvn install` in the server folder before executing this!

    cd client
    mvn clean compile package exec:java

The exec call will result in an "Hello World" on the stdout.
