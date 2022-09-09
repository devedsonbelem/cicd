FROM openjdk:11-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/cicdproject-0.0.1-SNAPSHOT.jar cicdproject.jar
EXPOSE 3031
ENTRYPOINT exec java $JAVA_OPTS -jar cicdproject.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar cicdproject.jar
