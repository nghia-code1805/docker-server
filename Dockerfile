FROM openjdk:8-jdk

ADD target/server-0.0.1-SNAPSHOT.jar server.jar

VOLUME /tmp

ENTRYPOINT ["java", "-jar", "server-0.0.1-SNAPSHOT.jar"]