FROM maven:3.9-amazoncorretto-8-debian-bullseye

#COPY pom.xml pipeline/

#COPY src/ pipeline/src/

#RUN yum install httpd -y

COPY /music/* /var/www/html/

WORKDIR /var/www/html

RUN mvn clean install

EXPOSE 8090

ENTRYPOINT [ "java", "-jar", "/pipeline/target/jenkins-pipeline.jar"]
