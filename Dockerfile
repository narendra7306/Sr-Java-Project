# we will use openjdk 8 with alpine as it is a very small linux distro.
FROM java:8-jdk

# copy the packaged jar file into our docker image
COPY target/*-SNAPSHOT.jar /demo.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "/demo.jar"]
