FROM openjdk:8-jdk

ADD target/server-0.0.1-SNAPSHOT.jar server.jar

COPY ../springboot-angular-mysql-basic-crud/target/server-0.0.1-SNAPSHOT.jar ./

VOLUME /tmp

RUN mvn clean install

ENTRYPOINT ["java", "-jar", "server-0.0.1-SNAPSHOT.jar"]