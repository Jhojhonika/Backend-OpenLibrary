FROM eclipse-temurin:21-jdk-alpine
VOLUME /tmp
COPY target/asci-art-generator-0.0.1-SNAPSHOT.jar ascii-art-generator.jar
ENTRYPOINT ["java","-jar","/ascii-art-generator.jar"]
EXPOSE 8081
RUN mkdir -p /home/user/.local/tmp/buildkit-mount396731837/target
