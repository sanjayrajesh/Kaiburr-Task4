#FROM tomcat:latest

#ADD target/task2.war /usr/local/tomcat/webapps/

#EXPOSE 8080
#CMD ["catalina.sh", "run"]

FROM openjdk:21-slim

ADD target/task2.war app.war

EXPOSE 8080

CMD ["java", "-jar", "app.war"]