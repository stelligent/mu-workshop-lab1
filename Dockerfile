FROM openjdk:8u131
MAINTAINER Casey Lee "casey.lee@stelligent.com"
ADD build/libs/banana-service.jar app.jar

ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XshowSettings:vm -XX:+PrintGCDetails -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=mu"

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]
EXPOSE 8080