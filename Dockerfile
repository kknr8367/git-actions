FROM openjdk:8
RUN mkdir springapp
WORKDIR /springapp

COPY target/GeneralProgExec-2.0.0-SNAPSHOT.jar GeneralProgExec-2.0.0-SNAPSHOT.jar

#ADD target/GeneralProgExec-2.0.0-SNAPSHOT.jar GeneralProgExec-2.0.0-SNAPSHOT.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "GeneralProgExec-2.0.0-SNAPSHOT.jar"]
