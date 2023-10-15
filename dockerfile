FROM maven:3.8.5-openjdk-17
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package -DskipTests
ENTRYPOINT ["java","-jar","/home/app/target/spring-boot-backend-0.0.1-SNAPSHOT.jar"]