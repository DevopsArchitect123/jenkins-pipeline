FROM maven:3-alpine

COPY pom.xml pipeline/

COPY src/ pipeline/src/

WORKDIR pipeline/src/

RUN mvn clean install -DskipTests

EXPOSE 8090

ENTRYPOINT [ "java", "-jar", "/pipeline/target/jenkins-pipeline.jar"]
