# we will use openjdk 8 with alpine as it is a very small linux distro.
FROM java:openjdk-8u111-jdk-alpine

# copy the packaged jar file into our docker image
COPY target/jb-hello-world-maven-0.2.0.jar /demo.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "/demo.jar"]
