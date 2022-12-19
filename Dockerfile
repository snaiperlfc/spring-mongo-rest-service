FROM openjdk:17-jdk-slim
VOLUME /tmp
ADD target/*.jar app.jar
ENV JAVA_OPTS=""
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar

#docker build -t snaiperlfc/spring-mongo-rest:1.0.0 .
#docker push snaiperlfc/spring-mongo-rest:1.0.0
