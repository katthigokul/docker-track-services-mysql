FROM openjdk:11
WORKDIR usr/src
ENV MYSQL_DATABASE=trackService
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=root
ENV MYSQL_CI_URL=jdbc:mysql://172.17.0.2:6603/trackService
ADD ./target/track-service-0.0.1-SNAPSHOT.jar /usr/src/track-service-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/src/track-service-0.0.1-SNAPSHOT.jar"]