FROM java:21
MAINTAINER demo
VOLUME /tmp
ADD /target/demo-0.0.1-SNAPSHOT.jar springboot.jar
RUN bash -c 'touch /springboot.jar'
EXPOSE 8000
ENTRYPOINT ["java", "-jar", "springboot.jar"]